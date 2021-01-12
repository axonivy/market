[Ivy]
17651A0FB6AFB366 9.2.0 #module
>Proto >Proto Collection #zClass
st0 eSign Big #zClass
st0 B #cInfo
st0 #process
st0 @TextInP .type .type #zField
st0 @TextInP .processKind .processKind #zField
st0 @TextInP .xml .xml #zField
st0 @TextInP .responsibility .responsibility #zField
st0 @StartRequest f0 '' #zField
st0 @RestClientCall f6 '' #zField
st0 @PushWFArc f9 '' #zField
st0 @EndRequest f7 '' #zField
st0 @StartRequest f11 '' #zField
st0 @PushWFArc f12 '' #zField
st0 @InfoButton f13 '' #zField
st0 @AnnotationArc f14 '' #zField
st0 @InfoButton f15 '' #zField
st0 @InfoButton f19 '' #zField
st0 @AnnotationArc f20 '' #zField
st0 @RestClientCall f21 '' #zField
st0 @IntermediateEvent f22 '' #zField
st0 @EndTask f23 '' #zField
st0 @RestClientCall f24 '' #zField
st0 @RestClientCall f25 '' #zField
st0 @PushWFArc f26 '' #zField
st0 @PushWFArc f27 '' #zField
st0 @PushWFArc f28 '' #zField
st0 @PushWFArc f29 '' #zField
st0 @AnnotationArc f30 '' #zField
st0 @PushWFArc f1 '' #zField
>Proto st0 st0 eSign #zField
st0 f0 outLink start.ivp #txt
st0 f0 inParamDecl '<> param;' #txt
st0 f0 requestEnabled true #txt
st0 f0 triggerEnabled false #txt
st0 f0 callSignature start() #txt
st0 f0 startName '1. Initiate a digital document signing workflow' #txt
st0 f0 caseData businessCase.attach=true #txt
st0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
st0 f0 @C|.responsibility Everybody #txt
st0 f0 73 121 30 30 -25 17 #rect
st0 f0 @|StartRequestIcon #fIcon
st0 f6 clientId 17e5dc27-5699-4717-ae6c-e2c8f1e2a30f #txt
st0 f6 path /v2.1/accounts/{accountId}/envelopes #txt
st0 f6 queryParams 'ac_status=;
block=;
cdse_mode=;
continuation_token=;
count=;
custom_field=;
email=;
envelope_ids=;
exclude=;
folder_ids=;
folder_types=;
from_date="2017-05-02T04:11Z";
from_to_status=;
include=;
include_purge_information=;
intersecting_folder_ids=;
last_queried_date=;
order=;
order_by=;
powerformids=;
query_budget=;
requester_date_format=;
search_text=;
start_position=;
status=;
to_date=;
transaction_ids=;
user_filter=;
user_id=;
user_name=;
' #txt
st0 f6 templateParams 'accountId="placeholder";
' #txt
st0 f6 resultType com.docusign.esign.model.EnvelopesInformation #txt
st0 f6 responseMapping 'out.envelopes=result.envelopes;
' #txt
st0 f6 clientErrorCode ivy:error:rest:client #txt
st0 f6 statusErrorCode ivy:error:rest:client #txt
st0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read envelopes</name>
    </language>
</elementInfo>
' #txt
st0 f6 160 114 112 44 -48 -7 #rect
st0 f6 @|RestClientCallIcon #fIcon
st0 f9 103 136 160 136 #arcP
st0 f7 template "/redirect.ivc" #txt
st0 f7 201 281 30 30 0 15 #rect
st0 f7 @|EndRequestIcon #fIcon
st0 f11 outLink visitSigningApp.ivp #txt
st0 f11 inParamDecl '<> param;' #txt
st0 f11 requestEnabled true #txt
st0 f11 triggerEnabled false #txt
st0 f11 callSignature visitSigningApp() #txt
st0 f11 startName '2. digital document inbox overview' #txt
st0 f11 caseData businessCase.attach=true #txt
st0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>visitSigningApp.ivp</name>
    </language>
</elementInfo>
' #txt
st0 f11 @C|.responsibility Everybody #txt
st0 f11 73 281 30 30 -24 16 #rect
st0 f11 @|StartRequestIcon #fIcon
st0 f12 103 296 201 296 #arcP
st0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Starts a request to sign a document 
which is being uploaded from your project</name>
        <nameStyle>20,5
16,5,0
42,5</nameStyle>
    </language>
</elementInfo>
' #txt
st0 f13 80 26 272 44 -131 -15 #rect
st0 f13 @|IBIcon #fIcon
st0 f14 80 48 73 136 #arcP
st0 f14 1 56 48 #addKink
st0 f14 2 56 136 #addKink
st0 f14 0 0.697842132605677 0 0 #arcLabel
st0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>For demo purposes only 
you have to sign the document.
However, you can involve any participant 
referred by a ''Name'' + ''Email Address''.
Just extend the ''recipient.signers'' attribute to do so.</name>
    </language>
</elementInfo>
' #txt
st0 f15 440 18 336 76 -164 -37 #rect
st0 f15 @|IBIcon #fIcon
st0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Inspect finished and pending workflows
and see their documents or adjust them.</name>
    </language>
</elementInfo>
' #txt
st0 f19 68 360 248 48 -113 -15 #rect
st0 f19 @|IBIcon #fIcon
st0 f20 68 384 73 296 #arcP
st0 f20 1 56 384 #addKink
st0 f20 2 56 296 #addKink
st0 f20 1 0.43132448115800415 0 0 #arcLabel
st0 f21 clientId 17e5dc27-5699-4717-ae6c-e2c8f1e2a30f #txt
st0 f21 path /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents #txt
st0 f21 queryParams 'documents_by_userid=;
include_document_size=;
include_metadata=;
include_tabs=;
recipient_id=;
shared_user_id=;
' #txt
st0 f21 templateParams 'accountId="placeholder";
envelopeId=in.envelopeId;
' #txt
st0 f21 resultType com.docusign.esign.model.EnvelopeDocumentsResult #txt
st0 f21 responseMapping 'out.documents=result.envelopeDocuments;
' #txt
st0 f21 clientErrorCode ivy:error:rest:client #txt
st0 f21 statusErrorCode ivy:error:rest:client #txt
st0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read 
documents</name>
    </language>
</elementInfo>
' #txt
st0 f21 336 306 112 44 -35 -15 #rect
st0 f21 @|RestClientCallIcon #fIcon
st0 f22 actionTable 'out=in;
' #txt
st0 f22 eventIdConfig "in.envelopeId" #txt
st0 f22 timeoutConfig 'ACTION_AFTER_TIMEOUT=NOTHING
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=' #txt
st0 f22 eventBeanClass "net.docusign.event.EnvelopeCompleted" #txt
st0 f22 eventBeanConfig "demo=in.envelopeId" #txt
st0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wait for signers</name>
    </language>
</elementInfo>
' #txt
st0 f22 377 217 30 30 19 -8 #rect
st0 f22 @|IntermediateEventIcon #fIcon
st0 f23 545 217 30 30 0 15 #rect
st0 f23 @|EndIcon #fIcon
st0 f24 clientId 17e5dc27-5699-4717-ae6c-e2c8f1e2a30f #txt
st0 f24 path /v2.1/accounts/{accountId}/envelopes #txt
st0 f24 queryParams 'cdse_mode=;
change_routing_order=;
completed_documents_only=;
merge_roles_on_draft=;
' #txt
st0 f24 templateParams 'accountId="placeholder";
' #txt
st0 f24 method POST #txt
st0 f24 bodyInputType ENTITY #txt
st0 f24 bodyObjectType com.docusign.esign.model.EnvelopeDefinition #txt
st0 f24 bodyObjectMapping 'param.documents=[ net.docusign.DocUtils.ofLocalFile("webContent/sampleDoc.rtf") ];
param.emailSubject="Connecting Axon.ivy with DocuSign";
param.recipients.signers=[ net.docusign.SignUtils.myself(ivy.session) ];
param.status="sent";
' #txt
st0 f24 resultType com.docusign.esign.model.EnvelopeSummary #txt
st0 f24 responseMapping 'out.envelopeId=result.envelopeId;
' #txt
st0 f24 responseCode ivy.case.customFields().stringField("envelopeId").set(out.envelopeId); #txt
st0 f24 clientErrorCode ivy:error:rest:client #txt
st0 f24 statusErrorCode ivy:error:rest:client #txt
st0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create envelope</name>
    </language>
</elementInfo>
' #txt
st0 f24 336 114 112 44 -51 -7 #rect
st0 f24 @|RestClientCallIcon #fIcon
st0 f25 clientId 17e5dc27-5699-4717-ae6c-e2c8f1e2a30f #txt
st0 f25 path /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId} #txt
st0 f25 queryParams 'documents_by_userid=;
recipient_id=;
shared_user_id=;
certificate=;
encoding=;
encrypt=;
language=;
show_changes=;
watermark=;
' #txt
st0 f25 templateParams 'accountId="placeholder";
envelopeId=in.envelopeId;
documentId=in.documents.get(0).documentId;
' #txt
st0 f25 resultType java.io.File #txt
st0 f25 responseCode 'ivy.log.info("file: "+result);
ivy.case.documents().add(in.documents.get(0).name).write().withContentFrom(result);
result.delete();

' #txt
st0 f25 clientErrorCode ivy:error:rest:client #txt
st0 f25 statusErrorCode ivy:error:rest:client #txt
st0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>store 
signed doc</name>
    </language>
</elementInfo>
' #txt
st0 f25 504 306 112 44 -34 -15 #rect
st0 f25 @|RestClientCallIcon #fIcon
st0 f26 560 306 560 247 #arcP
st0 f27 392 247 392 306 #arcP
st0 f28 448 328 504 328 #arcP
st0 f29 392 158 392 217 #arcP
st0 f30 608 94 448 136 #arcP
st0 f30 1 608 136 #addKink
st0 f30 1 0.9882938439380554 0 0 #arcLabel
st0 f1 272 136 336 136 #arcP
>Proto st0 .type net.docusign.esignature.demo.Data #txt
>Proto st0 .processKind NORMAL #txt
>Proto st0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>DocuSign eSignature</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>432</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto st0 0 0 32 24 18 0 #rect
>Proto st0 @|BIcon #fIcon
st0 f0 mainOut f9 tail #connect
st0 f9 head f6 mainIn #connect
st0 f11 mainOut f12 tail #connect
st0 f12 head f7 mainIn #connect
st0 f13 ao f14 tail #connect
st0 f14 head f0 @CG|ai #connect
st0 f19 ao f20 tail #connect
st0 f20 head f11 @CG|ai #connect
st0 f24 mainOut f29 tail #connect
st0 f29 head f22 mainIn #connect
st0 f25 mainOut f26 tail #connect
st0 f26 head f23 mainIn #connect
st0 f22 mainOut f27 tail #connect
st0 f27 head f21 mainIn #connect
st0 f21 mainOut f28 tail #connect
st0 f28 head f25 mainIn #connect
st0 f15 ao f30 tail #connect
st0 f30 head f24 @CG|ai #connect
st0 f6 mainOut f1 tail #connect
st0 f1 head f24 mainIn #connect
