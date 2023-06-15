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
* extension[homeCommunityid].valueCoding.system from $HomeCommunityID (required)



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
* status = $StatusCS#current "Current"
* type.coding.system = $TypeCodeCS
* type.coding.code = #74465-6 "Questionnaire Response Document"
* category = $ClassCodeCS#001 "Klinisk rapport"
* content.attachment.contentType = $ContentTypeCS#text/xml "MimeType-text/xml"
* content.attachment.language = $LanguageCS#da "Danish"
* content.format = $FormatCodeCS#urn:ad:dk:medcom:qrd-v1.3:full "DK QRD schema"
* context.event = $EventCodeCS#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.facilityType = $FacilityTypeCS#554871000005105 "psykiatrienhed"
* context.practiceSetting = $PracticeSettingCS#394588006 "børne- og ungdomspsykiatri"
* extension[homeCommunityid].valueCoding.system = $HomeCommunityIDCS
* extension[homeCommunityid].valueCoding.code = #1.2.208.176.43210.8.20 "TEST2"
