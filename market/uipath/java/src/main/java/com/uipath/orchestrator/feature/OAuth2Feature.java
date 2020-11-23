package com.uipath.orchestrator.feature;

import java.io.IOException;
import java.util.Map;
import java.util.Objects;

import javax.ws.rs.Priorities;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.ext.Provider;

/**
 * Authentication feature that authorizes request against uipath orchestrator
 * with a 'Bearer' token. 
 * 
 * https://docs.uipath.com/orchestrator/reference/consuming-cloud-api
 * 
 * @since 9.2
 */
public class OAuth2Feature implements Feature
{
  public static final String TOKEN_MISSING = "rest:client:token:missing";

  public static interface Property
  {
    // the given clientId+userKey combination is valid until revocation on the orchestrator web-ui.
    // so refreshing the token after 24h hours should be possible without any restrictions.
    String CLIENT_ID = "AUTH.clientId";
    String USER_KEY = "AUTH.userKey";
    
    String ACCESS_TOKEN_URI = "AUTH.accessTokenUri";
  }

  @Override
  public boolean configure(FeatureContext context)
  {
    context.register(new AuthorizationFilter(), Priorities.AUTHORIZATION);
    return true;
  }

  @Provider
  private static class AuthorizationFilter implements javax.ws.rs.client.ClientRequestFilter
  {
    private static final String AUTHORIZATION = "Authorization";
    private static final String DEFAULT_ACCESS_TOKEN_URI = "https://account.uipath.com/oauth/token";

    @Override
    public void filter(ClientRequestContext context) throws IOException
    {
      FeatureConfig config = new FeatureConfig(context.getConfiguration(), OAuth2Feature.class);
      String accessUri = config.read(Property.ACCESS_TOKEN_URI).orElse(DEFAULT_ACCESS_TOKEN_URI);
      if (Objects.equals(context.getUri().toASCIIString(), accessUri))
      { // already in token request: avoid stackOverflow
        return;
      }
      
      var token = getNewAccessToken(context.getClient(), config, accessUri);
      String accessToken = (String) token.get("access_token");
      if (accessToken == null || accessToken.isBlank())
      {
        throw new IllegalStateException("Failed to read 'access_token' from " + token);
      }
      if (!context.getHeaders().containsKey(AUTHORIZATION))
      {
        context.getHeaders().add(AUTHORIZATION, "Bearer " + accessToken);
      }
    }

    private static Map<String, Object> getNewAccessToken(Client client, FeatureConfig config, String accessUri)
    {
      TokenRequest request = new TokenRequest(
        config.readMandatory(Property.CLIENT_ID),
        config.readMandatory(Property.USER_KEY)
      );
      
      GenericType<Map<String, Object>> map = new GenericType<>(Map.class);
      var result = client
        .target(accessUri)
        .request()
        .post(Entity.json(request))
        .readEntity(map);
      return result;
    }

    @SuppressWarnings("unused")
    public static class TokenRequest
    {
      public final String grant_type = "refresh_token";
      public final String client_id;
      public final String refresh_token;

      public TokenRequest(String clientId, String userKey)
      {
        this.client_id = clientId;
        this.refresh_token = userKey;
      }
    }
  }

}