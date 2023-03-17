Profile: QRDDKDocumentReference
Parent: CoreDocumentReference
Id: qrd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Questionnaire Response Document (QRD-DK)."
* type.coding.system from $TypeCode (required) 
* category.coding.system from $ClassCode (required)
* content.attachment.contentType from $ContentType (required)
* content.attachment.language from $Language (required)
* content.format from $FormatCode (required)
* context.event.coding.system from $EventCode (required)
* context.facilityType.coding.system from $FacilityType (required)
* context.practiceSetting.coding.system from $FacilityType (required)
* extension[homeCommunityid].valueCoding.system from $HomeCommunityID 



/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

// Metadata instance
Instance: 50d6fc3c-d95a-4d12-8e61-8d70584c1f4e
InstanceOf: QRDDKDocumentReference
Title: "Instance of QRD-DK DocumentReference."
Description: "Instance of QRD-DK DocumentReference, containing relevant metadata"
* status = $StatusCS#current 
* type.coding = $TypeCodeCS#74465-6
* category.coding = $ClassCodeCS#001
* content.attachment.contentType = $ContentTypeCS#text/xml
* content.attachment.language = $LanguageCS#da
* content.format = $FormatCodeCS#urn:ad:dk:medcom:qrd-v1.3:full
* context.event.coding = $EventCodeCS#ALAL03	
* context.facilityType.coding = $FacilityTypeCS#554871000005105	
* context.practiceSetting.coding = $PracticeSettingCS#394588006
* extension[homeCommunityid].valueCoding = $HomeCommunityIDCS#1.2.208.176.43210.8.20