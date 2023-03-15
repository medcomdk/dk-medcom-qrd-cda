# Metadata for CDA Questionnarie Response Document (QRD-DK)

This implementation guide includes a DocumentReference profile for MedComs CDA document for qurestionnaire responses, called QRD-DK. The XDS-metadata is transfered to this FHIR profile.

## Maping from XDS metadata to FHIR Document Reference resource

The following mapping origins from [HL7's mapping between XDS metadata to FHIR DocumentReference resource](https://www.hl7.org/fhir/documentreference-mappings.html#xds) and is an specification of the table found in [Metadata for a CDA Document](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata-core/#maping-from-xds-metadata-to-fhir-document-reference-resource). The list of ValueSets is added. These restrictions are also defined in the profile, which can be found under the tab 'Artifacts'.

| **DocumentReference element** | **XDS-Metadata** | **ValueSet** |
|---|---|---|
|type | DocumentEntry.type | [TypeCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-dk-ihe-qrd-typecode-VS.html) |
|category | DocumentEntry.class | [ClassCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-qrd-classcode-VS.html) |
|content | | |
|- attachment.contentType | DocumentEntry.mimeType | [ContentType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-qrd-mimetype-VS.html) |
|- attachment.language | DocumentEntry.languageCode |  [Language](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-qrd-languagecode-VS.html)|
|- format | DocumentEntry.formatCode | [FormatCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-qrd-formatcode-VS.html) |
|context |  |  |
|- event | DocumentEntry.eventCodeList | [EventCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-dk-ihe-qrd-eventcodelist-VS.html) |
|- facilityType | DocumentEntry.healthcareFacilityTypeCode | [FacilityType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-qrd-HealthcareFacilityTypeCode-VS.html) |
|- practiceSetting | DocumentEntry.practiceSettingCode | [PracticeSetting](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-qrd-PracticeSettingCode-VS.html) |
