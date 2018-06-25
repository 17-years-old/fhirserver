unit FHIR.R4.IndexInfo;

{$I fhir.inc}

{
  Copyright (c) 2011+, HL7 and Health Intersections Pty Ltd (http://www.healthintersections.com.au)
  All rights reserved.

  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:

   * Redistributions of source code must retain the above copyright notice, this
     list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above copyright notice,
     this list of conditions and the following disclaimer in the documentation
     and/or other materials provided with the distribution.
   * Neither the name of HL7 nor the names of its contributors may be used to
     endorse or promote products derived from this software without specific
     prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  POSSIBILITY OF SUCH DAMAGE.

}

interface

// FHIR v3.4.0 generated 2018-06-10T06:42:03+10:00

uses
  SysUtils, Classes,
  FHIR.Support.Base, FHIR.Support.Utilities, FHIR.Support.Stream,
  FHIR.Base.Common,
  FHIR.R4.Resources, FHIR.R4.Types, FHIR.R4.Constants, FHIR.Tools.Indexing;

Type

  TFHIRIndexBuilderR4 = class (TFHIRIndexBuilder)
  private
    {$IFDEF FHIR_ACCOUNT}
    procedure buildIndexesForAccount(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ACTIVITYDEFINITION}
    procedure buildIndexesForActivityDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ADVERSEEVENT}
    procedure buildIndexesForAdverseEvent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ALLERGYINTOLERANCE}
    procedure buildIndexesForAllergyIntolerance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_APPOINTMENT}
    procedure buildIndexesForAppointment(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_APPOINTMENTRESPONSE}
    procedure buildIndexesForAppointmentResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_AUDITEVENT}
    procedure buildIndexesForAuditEvent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_BASIC}
    procedure buildIndexesForBasic(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_BINARY}
    procedure buildIndexesForBinary(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}
    procedure buildIndexesForBiologicallyDerivedProduct(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_BODYSTRUCTURE}
    procedure buildIndexesForBodyStructure(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_BUNDLE}
    procedure buildIndexesForBundle(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CAPABILITYSTATEMENT}
    procedure buildIndexesForCapabilityStatement(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CAREPLAN}
    procedure buildIndexesForCarePlan(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CARETEAM}
    procedure buildIndexesForCareTeam(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CHARGEITEM}
    procedure buildIndexesForChargeItem(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CHARGEITEMDEFINITION}
    procedure buildIndexesForChargeItemDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CLAIM}
    procedure buildIndexesForClaim(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CLAIMRESPONSE}
    procedure buildIndexesForClaimResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CLINICALIMPRESSION}
    procedure buildIndexesForClinicalImpression(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CODESYSTEM}
    procedure buildIndexesForCodeSystem(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_COMMUNICATION}
    procedure buildIndexesForCommunication(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_COMMUNICATIONREQUEST}
    procedure buildIndexesForCommunicationRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_COMPARTMENTDEFINITION}
    procedure buildIndexesForCompartmentDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_COMPOSITION}
    procedure buildIndexesForComposition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CONCEPTMAP}
    procedure buildIndexesForConceptMap(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CONDITION}
    procedure buildIndexesForCondition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CONSENT}
    procedure buildIndexesForConsent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_CONTRACT}
    procedure buildIndexesForContract(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_COVERAGE}
    procedure buildIndexesForCoverage(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DETECTEDISSUE}
    procedure buildIndexesForDetectedIssue(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DEVICE}
    procedure buildIndexesForDevice(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DEVICECOMPONENT}
    procedure buildIndexesForDeviceComponent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DEVICEMETRIC}
    procedure buildIndexesForDeviceMetric(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DEVICEREQUEST}
    procedure buildIndexesForDeviceRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DEVICEUSESTATEMENT}
    procedure buildIndexesForDeviceUseStatement(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DIAGNOSTICREPORT}
    procedure buildIndexesForDiagnosticReport(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DOCUMENTMANIFEST}
    procedure buildIndexesForDocumentManifest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_DOCUMENTREFERENCE}
    procedure buildIndexesForDocumentReference(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ELIGIBILITYREQUEST}
    procedure buildIndexesForEligibilityRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ELIGIBILITYRESPONSE}
    procedure buildIndexesForEligibilityResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ENCOUNTER}
    procedure buildIndexesForEncounter(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ENDPOINT}
    procedure buildIndexesForEndpoint(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ENROLLMENTREQUEST}
    procedure buildIndexesForEnrollmentRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ENROLLMENTRESPONSE}
    procedure buildIndexesForEnrollmentResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ENTRYDEFINITION}
    procedure buildIndexesForEntryDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_EPISODEOFCARE}
    procedure buildIndexesForEpisodeOfCare(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_EVENTDEFINITION}
    procedure buildIndexesForEventDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_EXAMPLESCENARIO}
    procedure buildIndexesForExampleScenario(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_EXPANSIONPROFILE}
    procedure buildIndexesForExpansionProfile(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_EXPLANATIONOFBENEFIT}
    procedure buildIndexesForExplanationOfBenefit(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_FAMILYMEMBERHISTORY}
    procedure buildIndexesForFamilyMemberHistory(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_FLAG}
    procedure buildIndexesForFlag(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_GOAL}
    procedure buildIndexesForGoal(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_GRAPHDEFINITION}
    procedure buildIndexesForGraphDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_GROUP}
    procedure buildIndexesForGroup(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_GUIDANCERESPONSE}
    procedure buildIndexesForGuidanceResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_HEALTHCARESERVICE}
    procedure buildIndexesForHealthcareService(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_IMAGINGSTUDY}
    procedure buildIndexesForImagingStudy(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_IMMUNIZATION}
    procedure buildIndexesForImmunization(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_IMMUNIZATIONEVALUATION}
    procedure buildIndexesForImmunizationEvaluation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}
    procedure buildIndexesForImmunizationRecommendation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_IMPLEMENTATIONGUIDE}
    procedure buildIndexesForImplementationGuide(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_INVOICE}
    procedure buildIndexesForInvoice(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ITEMINSTANCE}
    procedure buildIndexesForItemInstance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_LIBRARY}
    procedure buildIndexesForLibrary(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_LINKAGE}
    procedure buildIndexesForLinkage(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_LIST}
    procedure buildIndexesForList(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_LOCATION}
    procedure buildIndexesForLocation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEASURE}
    procedure buildIndexesForMeasure(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEASUREREPORT}
    procedure buildIndexesForMeasureReport(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDIA}
    procedure buildIndexesForMedia(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICATION}
    procedure buildIndexesForMedication(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICATIONADMINISTRATION}
    procedure buildIndexesForMedicationAdministration(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICATIONDISPENSE}
    procedure buildIndexesForMedicationDispense(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICATIONKNOWLEDGE}
    procedure buildIndexesForMedicationKnowledge(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICATIONREQUEST}
    procedure buildIndexesForMedicationRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICATIONSTATEMENT}
    procedure buildIndexesForMedicationStatement(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICINALPRODUCT}
    procedure buildIndexesForMedicinalProduct(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}
    procedure buildIndexesForMedicinalProductAuthorization(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}
    procedure buildIndexesForMedicinalProductClinicals(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}
    procedure buildIndexesForMedicinalProductDeviceSpec(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}
    procedure buildIndexesForMedicinalProductIngredient(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}
    procedure buildIndexesForMedicinalProductPackaged(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}
    procedure buildIndexesForMedicinalProductPharmaceutical(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MESSAGEDEFINITION}
    procedure buildIndexesForMessageDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_MESSAGEHEADER}
    procedure buildIndexesForMessageHeader(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_NAMINGSYSTEM}
    procedure buildIndexesForNamingSystem(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_NUTRITIONORDER}
    procedure buildIndexesForNutritionOrder(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_OBSERVATION}
    procedure buildIndexesForObservation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_OBSERVATIONDEFINITION}
    procedure buildIndexesForObservationDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_OCCUPATIONALDATA}
    procedure buildIndexesForOccupationalData(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_OPERATIONDEFINITION}
    procedure buildIndexesForOperationDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_OPERATIONOUTCOME}
    procedure buildIndexesForOperationOutcome(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ORGANIZATION}
    procedure buildIndexesForOrganization(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_ORGANIZATIONROLE}
    procedure buildIndexesForOrganizationRole(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PATIENT}
    procedure buildIndexesForPatient(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PAYMENTNOTICE}
    procedure buildIndexesForPaymentNotice(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PAYMENTRECONCILIATION}
    procedure buildIndexesForPaymentReconciliation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PERSON}
    procedure buildIndexesForPerson(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PLANDEFINITION}
    procedure buildIndexesForPlanDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PRACTITIONER}
    procedure buildIndexesForPractitioner(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PRACTITIONERROLE}
    procedure buildIndexesForPractitionerRole(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PROCEDURE}
    procedure buildIndexesForProcedure(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PROCESSREQUEST}
    procedure buildIndexesForProcessRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PROCESSRESPONSE}
    procedure buildIndexesForProcessResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PRODUCTPLAN}
    procedure buildIndexesForProductPlan(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_PROVENANCE}
    procedure buildIndexesForProvenance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_QUESTIONNAIRE}
    procedure buildIndexesForQuestionnaire(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_QUESTIONNAIRERESPONSE}
    procedure buildIndexesForQuestionnaireResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_RELATEDPERSON}
    procedure buildIndexesForRelatedPerson(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_REQUESTGROUP}
    procedure buildIndexesForRequestGroup(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_RESEARCHSTUDY}
    procedure buildIndexesForResearchStudy(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_RESEARCHSUBJECT}
    procedure buildIndexesForResearchSubject(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_RISKASSESSMENT}
    procedure buildIndexesForRiskAssessment(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SCHEDULE}
    procedure buildIndexesForSchedule(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SEARCHPARAMETER}
    procedure buildIndexesForSearchParameter(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SEQUENCE}
    procedure buildIndexesForSequence(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SERVICEREQUEST}
    procedure buildIndexesForServiceRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SLOT}
    procedure buildIndexesForSlot(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SPECIMEN}
    procedure buildIndexesForSpecimen(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SPECIMENDEFINITION}
    procedure buildIndexesForSpecimenDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_STRUCTUREDEFINITION}
    procedure buildIndexesForStructureDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_STRUCTUREMAP}
    procedure buildIndexesForStructureMap(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SUBSCRIPTION}
    procedure buildIndexesForSubscription(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SUBSTANCE}
    procedure buildIndexesForSubstance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SUBSTANCEPOLYMER}
    procedure buildIndexesForSubstancePolymer(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}
    procedure buildIndexesForSubstanceReferenceInformation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SUBSTANCESPECIFICATION}
    procedure buildIndexesForSubstanceSpecification(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SUPPLYDELIVERY}
    procedure buildIndexesForSupplyDelivery(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_SUPPLYREQUEST}
    procedure buildIndexesForSupplyRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_TASK}
    procedure buildIndexesForTask(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_TERMINOLOGYCAPABILITIES}
    procedure buildIndexesForTerminologyCapabilities(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_TESTREPORT}
    procedure buildIndexesForTestReport(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_TESTSCRIPT}
    procedure buildIndexesForTestScript(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_USERSESSION}
    procedure buildIndexesForUserSession(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_VALUESET}
    procedure buildIndexesForValueSet(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_VERIFICATIONRESULT}
    procedure buildIndexesForVerificationResult(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
    {$IFDEF FHIR_VISIONPRESCRIPTION}
    procedure buildIndexesForVisionPrescription(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
    {$ENDIF}
  public
    procedure registerIndexes(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList); override;
 end;
 TFHIRIndexBuilderX = TFHIRIndexBuilderR4;

implementation

{$IFDEF FHIR_ACCOUNT}
procedure TFHIRIndexBuilderR4.buildIndexesForAccount(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Account', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Account', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Account', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Account', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Account', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Account', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Account', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Account', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Account', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Account', 'identifier', 'Account number', sptTOKEN, [], 'Account.identifier', sxpNormal);
  indexes.add('Account', 'name', 'Human-readable label', sptSTRING, [], 'Account.name', sxpNormal);
  indexes.add('Account', 'owner', 'Who is responsible?', sptREFERENCE, ['Organization'], 'Account.owner', sxpNormal);
  indexes.add('Account', 'patient', 'What is account tied to?', sptREFERENCE, ['Patient'], 'Account.subject', sxpNormal);
  indexes.add('Account', 'period', 'Transaction window', sptDATE, [], 'Account.servicePeriod', sxpNormal);
  indexes.add('Account', 'status', 'active | inactive | entered-in-error | on-hold | unknown', sptTOKEN, [], 'Account.status', sxpNormal);
  indexes.add('Account', 'subject', 'What is account tied to?', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'HealthcareService', 'Location'], 'Account.subject', sxpNormal);
  indexes.add('Account', 'type', 'E.g. patient, expense, depreciation', sptTOKEN, [], 'Account.type', sxpNormal);
  compartments.register('Device', 'Account', ['subject']);
  compartments.register('Patient', 'Account', ['subject']);
  compartments.register('Practitioner', 'Account', ['subject']);
end;
{$ENDIF}

{$IFDEF FHIR_ACTIVITYDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForActivityDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ActivityDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ActivityDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ActivityDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ActivityDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ActivityDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ActivityDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ActivityDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ActivityDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ActivityDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ActivityDefinition', 'composed-of', 'What resource is being referenced', sptREFERENCE, [], 'ActivityDefinition.relatedArtifact.where(type=''composed-of'').resource', sxpNormal);
  indexes.add('ActivityDefinition', 'context-type', 'A type of use context assigned to the activity definition', sptTOKEN, [], 'ActivityDefinition.useContext.code', sxpNormal);
  indexes.add('ActivityDefinition', 'date', 'The activity definition publication date', sptDATE, [], 'ActivityDefinition.date', sxpNormal);
  indexes.add('ActivityDefinition', 'depends-on', 'What resource is being referenced', sptREFERENCE, ['Library'], 'ActivityDefinition.relatedArtifact.where(type=''depends-on'').resource | ActivityDefinition.library', sxpNormal);
  indexes.add('ActivityDefinition', 'derived-from', 'What resource is being referenced', sptREFERENCE, [], 'ActivityDefinition.relatedArtifact.where(type=''derived-from'').resource', sxpNormal);
  indexes.add('ActivityDefinition', 'description', 'The description of the activity definition', sptSTRING, [], 'ActivityDefinition.description', sxpNormal);
  indexes.add('ActivityDefinition', 'effective', 'The time during which the activity definition is intended to be in use', sptDATE, [], 'ActivityDefinition.effectivePeriod', sxpNormal);
  indexes.add('ActivityDefinition', 'identifier', 'External identifier for the activity definition', sptTOKEN, [], 'ActivityDefinition.identifier', sxpNormal);
  indexes.add('ActivityDefinition', 'jurisdiction', 'Intended jurisdiction for the activity definition', sptTOKEN, [], 'ActivityDefinition.jurisdiction', sxpNormal);
  indexes.add('ActivityDefinition', 'name', 'Computationally friendly name of the activity definition', sptSTRING, [], 'ActivityDefinition.name', sxpNormal);
  indexes.add('ActivityDefinition', 'predecessor', 'What resource is being referenced', sptREFERENCE, [], 'ActivityDefinition.relatedArtifact.where(type=''predecessor'').resource', sxpNormal);
  indexes.add('ActivityDefinition', 'publisher', 'Name of the publisher of the activity definition', sptSTRING, [], 'ActivityDefinition.publisher', sxpNormal);
  indexes.add('ActivityDefinition', 'status', 'The current status of the activity definition', sptTOKEN, [], 'ActivityDefinition.status', sxpNormal);
  indexes.add('ActivityDefinition', 'successor', 'What resource is being referenced', sptREFERENCE, [], 'ActivityDefinition.relatedArtifact.where(type=''successor'').resource', sxpNormal);
  indexes.add('ActivityDefinition', 'title', 'The human-friendly name of the activity definition', sptSTRING, [], 'ActivityDefinition.title', sxpNormal);
  indexes.add('ActivityDefinition', 'topic', 'Topics associated with the module', sptTOKEN, [], 'ActivityDefinition.topic', sxpNormal);
  indexes.add('ActivityDefinition', 'url', 'The uri that identifies the activity definition', sptURI, [], 'ActivityDefinition.url', sxpNormal);
  indexes.add('ActivityDefinition', 'version', 'The business version of the activity definition', sptTOKEN, [], 'ActivityDefinition.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_ADVERSEEVENT}
procedure TFHIRIndexBuilderR4.buildIndexesForAdverseEvent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('AdverseEvent', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AdverseEvent', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('AdverseEvent', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('AdverseEvent', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('AdverseEvent', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('AdverseEvent', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('AdverseEvent', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('AdverseEvent', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('AdverseEvent', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AdverseEvent', 'actuality', 'actual | potential', sptTOKEN, [], 'AdverseEvent.actuality', sxpNormal);
  indexes.add('AdverseEvent', 'category', 'ProductProblem | ProductQuality | ProductUseError | WrongDose | IncorrectPrescribingInformation | WrongTechnique | WrongRouteOfAdministration | WrongRate | WrongDuration | WrongTime | ExpiredDrug | MedicalDeviceUseError | ProblemDifferentManufacturer'+' | UnsafePhysicalEnvironment', sptTOKEN, [], 'AdverseEvent.category', sxpNormal);
  indexes.add('AdverseEvent', 'date', 'When the event occurred', sptDATE, [], 'AdverseEvent.date', sxpNormal);
  indexes.add('AdverseEvent', 'event', 'Type of the event itself in relation to the subject', sptTOKEN, [], 'AdverseEvent.event', sxpNormal);
  indexes.add('AdverseEvent', 'location', 'Location where adverse event occurred', sptREFERENCE, ['Location'], 'AdverseEvent.location', sxpNormal);
  indexes.add('AdverseEvent', 'recorder', 'Who recorded the adverse event', sptREFERENCE, ['Practitioner', 'Patient', 'RelatedPerson'], 'AdverseEvent.recorder', sxpNormal);
  indexes.add('AdverseEvent', 'resultingcondition', 'Effect on the subject due to this event', sptREFERENCE, ['Condition'], 'AdverseEvent.resultingCondition', sxpNormal);
  indexes.add('AdverseEvent', 'seriousness', 'Seriousness of the event', sptTOKEN, [], 'AdverseEvent.seriousness', sxpNormal);
  indexes.add('AdverseEvent', 'severity', 'Mild | Moderate | Severe', sptTOKEN, [], 'AdverseEvent.severity', sxpNormal);
  indexes.add('AdverseEvent', 'study', 'AdverseEvent.study', sptREFERENCE, ['ResearchStudy'], 'AdverseEvent.study', sxpNormal);
  indexes.add('AdverseEvent', 'subject', 'Subject impacted by event', sptREFERENCE, ['Practitioner', 'Group', 'Patient', 'RelatedPerson'], 'AdverseEvent.subject', sxpNormal);
  indexes.add('AdverseEvent', 'substance', 'Refers to the specific entity that caused the adverse event', sptREFERENCE, ['Immunization', 'Device', 'Medication', 'Procedure', 'Substance', 'MedicationAdministration', 'MedicationStatement'], 'AdverseEvent.suspectEntity.instance', sxpNormal);
  compartments.register('Patient', 'AdverseEvent', ['subject']);
  compartments.register('Practitioner', 'AdverseEvent', ['recorder']);
  compartments.register('RelatedPerson', 'AdverseEvent', ['recorder']);
end;
{$ENDIF}

{$IFDEF FHIR_ALLERGYINTOLERANCE}
procedure TFHIRIndexBuilderR4.buildIndexesForAllergyIntolerance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('AllergyIntolerance', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AllergyIntolerance', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('AllergyIntolerance', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('AllergyIntolerance', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('AllergyIntolerance', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('AllergyIntolerance', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('AllergyIntolerance', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('AllergyIntolerance', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('AllergyIntolerance', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AllergyIntolerance', 'asserter', 'Source of the information about the allergy', sptREFERENCE, ['Practitioner', 'Patient', 'RelatedPerson'], 'AllergyIntolerance.asserter', sxpNormal);
  indexes.add('AllergyIntolerance', 'category', 'food | medication | environment | biologic', sptTOKEN, [], 'AllergyIntolerance.category', sxpNormal);
  indexes.add('AllergyIntolerance', 'clinical-status', 'active | inactive | resolved', sptTOKEN, [], 'AllergyIntolerance.clinicalStatus', sxpNormal);
  indexes.add('AllergyIntolerance', 'code', 'Code that identifies the allergy or intolerance', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('AllergyIntolerance', 'criticality', 'low | high | unable-to-assess', sptTOKEN, [], 'AllergyIntolerance.criticality', sxpNormal);
  indexes.add('AllergyIntolerance', 'date', 'Date record was believed accurate', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('AllergyIntolerance', 'identifier', 'External ids for this item', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('AllergyIntolerance', 'last-date', 'Date(/time) of last known occurrence of a reaction', sptDATE, [], 'AllergyIntolerance.lastOccurrence', sxpNormal);
  indexes.add('AllergyIntolerance', 'manifestation', 'Clinical symptoms/signs associated with the Event', sptTOKEN, [], 'AllergyIntolerance.reaction.manifestation', sxpNormal);
  indexes.add('AllergyIntolerance', 'onset', 'Date(/time) when manifestations showed', sptDATE, [], 'AllergyIntolerance.reaction.onset', sxpNormal);
  indexes.add('AllergyIntolerance', 'patient', 'Who the sensitivity is for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('AllergyIntolerance', 'recorder', 'Who recorded the sensitivity', sptREFERENCE, ['Practitioner', 'Patient', 'RelatedPerson'], 'AllergyIntolerance.recorder', sxpNormal);
  indexes.add('AllergyIntolerance', 'route', 'How the subject was exposed to the substance', sptTOKEN, [], 'AllergyIntolerance.reaction.exposureRoute', sxpNormal);
  indexes.add('AllergyIntolerance', 'severity', 'mild | moderate | severe (of event as a whole)', sptTOKEN, [], 'AllergyIntolerance.reaction.severity', sxpNormal);
  indexes.add('AllergyIntolerance', 'type', 'allergy | intolerance - Underlying mechanism (if known)', sptTOKEN, [], 'DocumentManifest.type | DocumentReference.type | Encounter.type | AllergyIntolerance.type | EpisodeOfCare.type | Composition.type', sxpNormal);
  indexes.add('AllergyIntolerance', 'verification-status', 'unconfirmed | confirmed | refuted | entered-in-error', sptTOKEN, [], 'AllergyIntolerance.verificationStatus', sxpNormal);
  compartments.register('Patient', 'AllergyIntolerance', ['patient', 'recorder', 'asserter']);
  compartments.register('Practitioner', 'AllergyIntolerance', ['recorder', 'asserter']);
  compartments.register('RelatedPerson', 'AllergyIntolerance', ['asserter']);
end;
{$ENDIF}

{$IFDEF FHIR_APPOINTMENT}
procedure TFHIRIndexBuilderR4.buildIndexesForAppointment(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Appointment', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Appointment', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Appointment', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Appointment', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Appointment', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Appointment', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Appointment', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Appointment', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Appointment', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Appointment', 'actor', 'Any one of the individuals participating in the appointment', sptREFERENCE, ['Practitioner', 'Device', 'Patient', 'HealthcareService', 'RelatedPerson', 'Location'], 'Appointment.participant.actor', sxpNormal);
  indexes.add('Appointment', 'appointment-type', 'The style of appointment or patient that has been booked in the slot (not service type)', sptTOKEN, [], 'Appointment.appointmentType', sxpNormal);
  indexes.add('Appointment', 'based-on', 'The service request this appointment is allocated to assess', sptREFERENCE, ['ServiceRequest'], 'Appointment.basedOn', sxpNormal);
  indexes.add('Appointment', 'date', 'Appointment date/time.', sptDATE, [], 'Appointment.start', sxpNormal);
  indexes.add('Appointment', 'identifier', 'An Identifier of the Appointment', sptTOKEN, [], 'Appointment.identifier', sxpNormal);
  indexes.add('Appointment', 'location', 'This location is listed in the participants of the appointment', sptREFERENCE, ['Location'], 'Appointment.participant.actor', sxpNormal);
  indexes.add('Appointment', 'part-status', 'The Participation status of the subject, or other participant on the appointment. Can be used to locate participants that have not responded to meeting requests.', sptTOKEN, [], 'Appointment.participant.status', sxpNormal);
  indexes.add('Appointment', 'patient', 'One of the individuals of the appointment is this patient', sptREFERENCE, ['Patient'], 'Appointment.participant.actor', sxpNormal);
  indexes.add('Appointment', 'practitioner', 'One of the individuals of the appointment is this practitioner', sptREFERENCE, ['Practitioner'], 'Appointment.participant.actor', sxpNormal);
  indexes.add('Appointment', 'service-type', 'The specific service that is to be performed during this appointment', sptTOKEN, [], 'Appointment.serviceType', sxpNormal);
  indexes.add('Appointment', 'status', 'The overall status of the appointment', sptTOKEN, [], 'Appointment.status', sxpNormal);
  compartments.register('Device', 'Appointment', ['actor']);
  compartments.register('Patient', 'Appointment', ['actor']);
  compartments.register('Practitioner', 'Appointment', ['actor']);
  compartments.register('RelatedPerson', 'Appointment', ['actor']);
end;
{$ENDIF}

{$IFDEF FHIR_APPOINTMENTRESPONSE}
procedure TFHIRIndexBuilderR4.buildIndexesForAppointmentResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('AppointmentResponse', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AppointmentResponse', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('AppointmentResponse', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('AppointmentResponse', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('AppointmentResponse', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('AppointmentResponse', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('AppointmentResponse', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('AppointmentResponse', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('AppointmentResponse', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AppointmentResponse', 'actor', 'The Person, Location/HealthcareService or Device that this appointment response replies for', sptREFERENCE, ['Practitioner', 'Device', 'Patient', 'HealthcareService', 'RelatedPerson', 'Location'], 'AppointmentResponse.actor', sxpNormal);
  indexes.add('AppointmentResponse', 'appointment', 'The appointment that the response is attached to', sptREFERENCE, ['Appointment'], 'AppointmentResponse.appointment', sxpNormal);
  indexes.add('AppointmentResponse', 'identifier', 'An Identifier in this appointment response', sptTOKEN, [], 'AppointmentResponse.identifier', sxpNormal);
  indexes.add('AppointmentResponse', 'location', 'This Response is for this Location', sptREFERENCE, ['Location'], 'AppointmentResponse.actor', sxpNormal);
  indexes.add('AppointmentResponse', 'part-status', 'The participants acceptance status for this appointment', sptTOKEN, [], 'AppointmentResponse.participantStatus', sxpNormal);
  indexes.add('AppointmentResponse', 'patient', 'This Response is for this Patient', sptREFERENCE, ['Patient'], 'AppointmentResponse.actor', sxpNormal);
  indexes.add('AppointmentResponse', 'practitioner', 'This Response is for this Practitioner', sptREFERENCE, ['Practitioner'], 'AppointmentResponse.actor', sxpNormal);
  compartments.register('Device', 'AppointmentResponse', ['actor']);
  compartments.register('Patient', 'AppointmentResponse', ['actor']);
  compartments.register('Practitioner', 'AppointmentResponse', ['actor']);
  compartments.register('RelatedPerson', 'AppointmentResponse', ['actor']);
end;
{$ENDIF}

{$IFDEF FHIR_AUDITEVENT}
procedure TFHIRIndexBuilderR4.buildIndexesForAuditEvent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('AuditEvent', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AuditEvent', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('AuditEvent', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('AuditEvent', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('AuditEvent', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('AuditEvent', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('AuditEvent', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('AuditEvent', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('AuditEvent', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('AuditEvent', 'action', 'Type of action performed during the event', sptTOKEN, [], 'AuditEvent.action', sxpNormal);
  indexes.add('AuditEvent', 'address', 'Identifier for the network access point of the user device', sptSTRING, [], 'AuditEvent.agent.network.address', sxpNormal);
  indexes.add('AuditEvent', 'agent', 'Direct reference to resource', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'AuditEvent.agent.reference', sxpNormal);
  indexes.add('AuditEvent', 'agent-name', 'Human-meaningful name for the agent', sptSTRING, [], 'AuditEvent.agent.name', sxpNormal);
  indexes.add('AuditEvent', 'agent-role', 'Agent role in the event', sptTOKEN, [], 'AuditEvent.agent.role', sxpNormal);
  indexes.add('AuditEvent', 'altid', 'Alternative User id e.g. authentication', sptTOKEN, [], 'AuditEvent.agent.altId', sxpNormal);
  indexes.add('AuditEvent', 'date', 'Time when the event was recorded', sptDATE, [], 'AuditEvent.recorded', sxpNormal);
  indexes.add('AuditEvent', 'entity', 'Specific instance of resource', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'AuditEvent.entity.reference', sxpNormal);
  indexes.add('AuditEvent', 'entity-id', 'Specific instance of object', sptTOKEN, [], 'AuditEvent.entity.identifier', sxpNormal);
  indexes.add('AuditEvent', 'entity-name', 'Descriptor for entity', sptSTRING, [], 'AuditEvent.entity.name', sxpNormal);
  indexes.add('AuditEvent', 'entity-role', 'What role the entity played', sptTOKEN, [], 'AuditEvent.entity.role', sxpNormal);
  indexes.add('AuditEvent', 'entity-type', 'Type of entity involved', sptTOKEN, [], 'AuditEvent.entity.type', sxpNormal);
  indexes.add('AuditEvent', 'outcome', 'Whether the event succeeded or failed', sptTOKEN, [], 'AuditEvent.outcome', sxpNormal);
  indexes.add('AuditEvent', 'patient', 'Direct reference to resource', sptREFERENCE, ['Patient'], 'AuditEvent.agent.reference | AuditEvent.entity.reference', sxpNormal);
  indexes.add('AuditEvent', 'policy', 'Policy that authorized event', sptURI, [], 'AuditEvent.agent.policy', sxpNormal);
  indexes.add('AuditEvent', 'site', 'Logical source location within the enterprise', sptTOKEN, [], 'AuditEvent.source.site', sxpNormal);
  indexes.add('AuditEvent', 'source', 'The identity of source detecting the event', sptTOKEN, [], 'AuditEvent.source.identifier', sxpNormal);
  indexes.add('AuditEvent', 'subtype', 'More specific type/id for the event', sptTOKEN, [], 'AuditEvent.subtype', sxpNormal);
  indexes.add('AuditEvent', 'type', 'Type/identifier of event', sptTOKEN, [], 'AuditEvent.type', sxpNormal);
  indexes.add('AuditEvent', 'user', 'Unique identifier for the user', sptTOKEN, [], 'AuditEvent.agent.userId', sxpNormal);
  compartments.register('Device', 'AuditEvent', ['agent']);
  compartments.register('Patient', 'AuditEvent', ['patient', 'agent.patient', 'entity.patient']);
  compartments.register('Practitioner', 'AuditEvent', ['agent']);
end;
{$ENDIF}

{$IFDEF FHIR_BASIC}
procedure TFHIRIndexBuilderR4.buildIndexesForBasic(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Basic', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Basic', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Basic', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Basic', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Basic', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Basic', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Basic', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Basic', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Basic', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Basic', 'author', 'Who created', sptREFERENCE, ['Practitioner', 'Patient', 'RelatedPerson'], 'Basic.author', sxpNormal);
  indexes.add('Basic', 'code', 'Kind of Resource', sptTOKEN, [], 'Basic.code', sxpNormal);
  indexes.add('Basic', 'created', 'When created', sptDATE, [], 'Basic.created', sxpNormal);
  indexes.add('Basic', 'identifier', 'Business identifier', sptTOKEN, [], 'Basic.identifier', sxpNormal);
  indexes.add('Basic', 'patient', 'Identifies the focus of this resource', sptREFERENCE, ['Patient'], 'Basic.subject', sxpNormal);
  indexes.add('Basic', 'subject', 'Identifies the focus of this resource', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Basic.subject', sxpNormal);
  compartments.register('Patient', 'Basic', ['patient', 'author']);
  compartments.register('Practitioner', 'Basic', ['author']);
  compartments.register('RelatedPerson', 'Basic', ['author']);
end;
{$ENDIF}

{$IFDEF FHIR_BINARY}
procedure TFHIRIndexBuilderR4.buildIndexesForBinary(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Binary', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Binary', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Binary', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Binary', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Binary', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Binary', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Binary', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Binary', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}
procedure TFHIRIndexBuilderR4.buildIndexesForBiologicallyDerivedProduct(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('BiologicallyDerivedProduct', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('BiologicallyDerivedProduct', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_BODYSTRUCTURE}
procedure TFHIRIndexBuilderR4.buildIndexesForBodyStructure(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('BodyStructure', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('BodyStructure', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('BodyStructure', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('BodyStructure', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('BodyStructure', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('BodyStructure', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('BodyStructure', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('BodyStructure', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('BodyStructure', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('BodyStructure', 'identifier', 'Bodystructure identifier', sptTOKEN, [], 'BodyStructure.identifier', sxpNormal);
  indexes.add('BodyStructure', 'location', 'Body site', sptTOKEN, [], 'BodyStructure.location', sxpNormal);
  indexes.add('BodyStructure', 'morphology', 'Kind of Structure', sptTOKEN, [], 'BodyStructure.morphology', sxpNormal);
  indexes.add('BodyStructure', 'patient', 'Who this is about', sptREFERENCE, ['Patient'], 'BodyStructure.patient', sxpNormal);
  compartments.register('Patient', 'BodyStructure', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_BUNDLE}
procedure TFHIRIndexBuilderR4.buildIndexesForBundle(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Bundle', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Bundle', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Bundle', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Bundle', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Bundle', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Bundle', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Bundle', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Bundle', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Bundle', 'composition', 'The first resource in the bundle, if the bundle type is "document" - this is a composition, and this parameter provides access to searches its contents', sptREFERENCE, ['Composition'], 'Bundle.entry[0].resource', sxpNormal);
  indexes.add('Bundle', 'identifier', 'Persistent identifier for the bundle', sptTOKEN, [], 'Bundle.identifier', sxpNormal);
  indexes.add('Bundle', 'message', 'The first resource in the bundle, if the bundle type is "message" - this is a message header, and this parameter provides access to search its contents', sptREFERENCE, ['MessageHeader'], 'Bundle.entry[0].resource', sxpNormal);
  indexes.add('Bundle', 'timestamp', 'When the bundle was assembled', sptDATE, [], 'Bundle.timestamp', sxpNormal);
  indexes.add('Bundle', 'type', 'document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection', sptTOKEN, [], 'Bundle.type', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_CAPABILITYSTATEMENT}
procedure TFHIRIndexBuilderR4.buildIndexesForCapabilityStatement(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('CapabilityStatement', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CapabilityStatement', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('CapabilityStatement', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('CapabilityStatement', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('CapabilityStatement', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('CapabilityStatement', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('CapabilityStatement', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('CapabilityStatement', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('CapabilityStatement', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CapabilityStatement', 'date', 'The capability statement publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('CapabilityStatement', 'description', 'The description of the capability statement', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('CapabilityStatement', 'fhirversion', 'The version of FHIR', sptTOKEN, [], 'CapabilityStatement.version', sxpNormal);
  indexes.add('CapabilityStatement', 'format', 'formats supported (xml | json | ttl | mime type)', sptTOKEN, [], 'CapabilityStatement.format', sxpNormal);
  indexes.add('CapabilityStatement', 'guide', 'Implementation guides supported', sptREFERENCE, ['ImplementationGuide'], 'CapabilityStatement.implementationGuide', sxpNormal);
  indexes.add('CapabilityStatement', 'jurisdiction', 'Intended jurisdiction for the capability statement', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('CapabilityStatement', 'mode', 'Mode - restful (server/client) or messaging (sender/receiver)', sptTOKEN, [], 'CapabilityStatement.rest.mode', sxpNormal);
  indexes.add('CapabilityStatement', 'name', 'Computationally friendly name of the capability statement', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('CapabilityStatement', 'publisher', 'Name of the publisher of the capability statement', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('CapabilityStatement', 'resource', 'Name of a resource mentioned in a capability statement', sptTOKEN, [], 'CapabilityStatement.rest.resource.type', sxpNormal);
  indexes.add('CapabilityStatement', 'resource-profile', 'A profile id invoked in a capability statement', sptREFERENCE, ['StructureDefinition'], 'CapabilityStatement.rest.resource.profile', sxpNormal);
  indexes.add('CapabilityStatement', 'security-service', 'OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates', sptTOKEN, [], 'CapabilityStatement.rest.security.service', sxpNormal);
  indexes.add('CapabilityStatement', 'software', 'Part of a the name of a software application', sptSTRING, [], 'CapabilityStatement.software.name', sxpNormal);
  indexes.add('CapabilityStatement', 'status', 'The current status of the capability statement', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('CapabilityStatement', 'supported-profile', 'Profiles for use cases supported', sptREFERENCE, ['StructureDefinition'], 'CapabilityStatement.rest.resource.supportedProfile', sxpNormal);
  indexes.add('CapabilityStatement', 'title', 'The human-friendly name of the capability statement', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('CapabilityStatement', 'url', 'The uri that identifies the capability statement', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('CapabilityStatement', 'version', 'The business version of the capability statement', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_CAREPLAN}
procedure TFHIRIndexBuilderR4.buildIndexesForCarePlan(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('CarePlan', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CarePlan', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('CarePlan', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('CarePlan', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('CarePlan', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('CarePlan', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('CarePlan', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('CarePlan', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('CarePlan', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CarePlan', 'activity-code', 'Detail type of activity', sptTOKEN, [], 'CarePlan.activity.detail.code', sxpNormal);
  indexes.add('CarePlan', 'activity-date', 'Specified date occurs within period specified by CarePlan.activity.timingSchedule', sptDATE, [], 'CarePlan.activity.detail.scheduled', sxpNormal);
  indexes.add('CarePlan', 'activity-reference', 'Activity details defined in specific resource', sptREFERENCE, ['Appointment', 'MedicationRequest', 'Task', 'NutritionOrder', 'RequestGroup', 'VisionPrescription', 'DeviceRequest', 'ServiceRequest', 'CommunicationRequest'], 'CarePlan.activity.reference', sxpNormal);
  indexes.add('CarePlan', 'based-on', 'Fulfills CarePlan', sptREFERENCE, ['CarePlan'], 'CarePlan.basedOn', sxpNormal);
  indexes.add('CarePlan', 'care-team', 'Who''s involved in plan?', sptREFERENCE, ['CareTeam'], 'CarePlan.careTeam', sxpNormal);
  indexes.add('CarePlan', 'category', 'Type of plan', sptTOKEN, [], 'CarePlan.category', sxpNormal);
  indexes.add('CarePlan', 'condition', 'Health issues this plan addresses', sptREFERENCE, ['Condition'], 'CarePlan.addresses', sxpNormal);
  indexes.add('CarePlan', 'context', 'Created in context of', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'CarePlan.context', sxpNormal);
  indexes.add('CarePlan', 'date', 'Time period plan covers', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('CarePlan', 'encounter', 'Created in context of', sptREFERENCE, ['Encounter'], 'CarePlan.context', sxpNormal);
  indexes.add('CarePlan', 'goal', 'Desired outcome of plan', sptREFERENCE, ['Goal'], 'CarePlan.goal', sxpNormal);
  indexes.add('CarePlan', 'identifier', 'External Ids for this plan', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('CarePlan', 'instantiates', 'Protocol or definition', sptURI, [], 'CarePlan.instantiates', sxpNormal);
  indexes.add('CarePlan', 'intent', 'proposal | plan | order | option', sptTOKEN, [], 'CarePlan.intent', sxpNormal);
  indexes.add('CarePlan', 'part-of', 'Part of referenced CarePlan', sptREFERENCE, ['CarePlan'], 'CarePlan.partOf', sxpNormal);
  indexes.add('CarePlan', 'patient', 'Who the care plan is for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('CarePlan', 'performer', 'Matches if the practitioner is listed as a performer in any of the "simple" activities.  (For performers of the detailed activities, chain through the activitydetail search parameter.)', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'HealthcareService', 'PractitionerRole', 'RelatedPerson'], 'CarePlan.activity.detail.performer', sxpNormal);
  indexes.add('CarePlan', 'replaces', 'CarePlan replaced by this CarePlan', sptREFERENCE, ['CarePlan'], 'CarePlan.replaces', sxpNormal);
  indexes.add('CarePlan', 'status', 'draft | active | suspended | completed | entered-in-error | cancelled | unknown', sptTOKEN, [], 'CarePlan.status', sxpNormal);
  indexes.add('CarePlan', 'subject', 'Who the care plan is for', sptREFERENCE, ['Group', 'Patient'], 'CarePlan.subject', sxpNormal);
  compartments.register('Patient', 'CarePlan', ['patient', 'performer']);
  compartments.register('Practitioner', 'CarePlan', ['performer']);
  compartments.register('RelatedPerson', 'CarePlan', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_CARETEAM}
procedure TFHIRIndexBuilderR4.buildIndexesForCareTeam(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('CareTeam', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CareTeam', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('CareTeam', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('CareTeam', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('CareTeam', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('CareTeam', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('CareTeam', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('CareTeam', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('CareTeam', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CareTeam', 'category', 'Type of team', sptTOKEN, [], 'CareTeam.category', sxpNormal);
  indexes.add('CareTeam', 'context', 'Encounter or episode associated with CareTeam', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'CareTeam.context', sxpNormal);
  indexes.add('CareTeam', 'date', 'Time period team covers', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('CareTeam', 'encounter', 'Encounter or episode associated with CareTeam', sptREFERENCE, ['Encounter'], 'CareTeam.context', sxpNormal);
  indexes.add('CareTeam', 'identifier', 'External Ids for this team', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('CareTeam', 'participant', 'Who is involved', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Patient', 'RelatedPerson'], 'CareTeam.participant.member', sxpNormal);
  indexes.add('CareTeam', 'patient', 'Who care team is for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('CareTeam', 'status', 'proposed | active | suspended | inactive | entered-in-error', sptTOKEN, [], 'CareTeam.status', sxpNormal);
  indexes.add('CareTeam', 'subject', 'Who care team is for', sptREFERENCE, ['Group', 'Patient'], 'CareTeam.subject', sxpNormal);
  compartments.register('Patient', 'CareTeam', ['patient', 'participant']);
  compartments.register('Practitioner', 'CareTeam', ['participant']);
  compartments.register('RelatedPerson', 'CareTeam', ['participant']);
end;
{$ENDIF}

{$IFDEF FHIR_CHARGEITEM}
procedure TFHIRIndexBuilderR4.buildIndexesForChargeItem(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ChargeItem', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ChargeItem', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ChargeItem', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ChargeItem', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ChargeItem', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ChargeItem', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ChargeItem', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ChargeItem', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ChargeItem', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ChargeItem', 'account', 'Account to place this charge', sptREFERENCE, ['Account'], 'ChargeItem.account', sxpNormal);
  indexes.add('ChargeItem', 'code', 'A code that identifies the charge, like a billing code', sptTOKEN, [], 'ChargeItem.code', sxpNormal);
  indexes.add('ChargeItem', 'context', 'Encounter / Episode associated with event', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'ChargeItem.context', sxpNormal);
  indexes.add('ChargeItem', 'entered-date', 'Date the charge item was entered', sptDATE, [], 'ChargeItem.enteredDate', sxpNormal);
  indexes.add('ChargeItem', 'enterer', 'Individual who was entering', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'RelatedPerson'], 'ChargeItem.enterer', sxpNormal);
  indexes.add('ChargeItem', 'factor-override', 'Factor overriding the associated rules', sptNUMBER, [], 'ChargeItem.factorOverride', sxpNormal);
  indexes.add('ChargeItem', 'identifier', 'Business Identifier for item', sptTOKEN, [], 'ChargeItem.identifier', sxpNormal);
  indexes.add('ChargeItem', 'occurrence', 'When the charged service was applied', sptDATE, [], 'ChargeItem.occurrence', sxpNormal);
  indexes.add('ChargeItem', 'patient', 'Individual service was done for/to', sptREFERENCE, ['Patient'], 'ChargeItem.subject', sxpNormal);
  indexes.add('ChargeItem', 'performer-actor', 'Individual who was performing', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'ChargeItem.performer.actor', sxpNormal);
  indexes.add('ChargeItem', 'performer-function', 'What type of performance was done', sptTOKEN, [], 'ChargeItem.performer.function', sxpNormal);
  indexes.add('ChargeItem', 'performing-organization', 'Organization providing the charged sevice', sptREFERENCE, ['Organization'], 'ChargeItem.performingOrganization', sxpNormal);
  indexes.add('ChargeItem', 'price-override', 'Price overriding the associated rules', sptQUANTITY, [], 'ChargeItem.priceOverride', sxpNormal);
  indexes.add('ChargeItem', 'quantity', 'Quantity of which the charge item has been serviced', sptQUANTITY, [], 'ChargeItem.quantity', sxpNormal);
  indexes.add('ChargeItem', 'requesting-organization', 'Organization requesting the charged service', sptREFERENCE, ['Organization'], 'ChargeItem.requestingOrganization', sxpNormal);
  indexes.add('ChargeItem', 'service', 'Which rendered service is being charged?', sptREFERENCE, ['Immunization', 'MedicationDispense', 'SupplyDelivery', 'Observation', 'DiagnosticReport', 'ImagingStudy', 'MedicationAdministration', 'Procedure'], 'ChargeItem.service', sxpNormal);
  indexes.add('ChargeItem', 'subject', 'Individual service was done for/to', sptREFERENCE, ['Group', 'Patient'], 'ChargeItem.subject', sxpNormal);
  compartments.register('Device', 'ChargeItem', ['enterer', 'performer-actor']);
  compartments.register('Encounter', 'ChargeItem', ['context']);
  compartments.register('Patient', 'ChargeItem', ['subject']);
  compartments.register('Practitioner', 'ChargeItem', ['enterer', 'performer-actor']);
  compartments.register('RelatedPerson', 'ChargeItem', ['enterer', 'performer-actor']);
end;
{$ENDIF}

{$IFDEF FHIR_CHARGEITEMDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForChargeItemDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ChargeItemDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ChargeItemDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ChargeItemDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ChargeItemDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ChargeItemDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ChargeItemDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ChargeItemDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ChargeItemDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ChargeItemDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ChargeItemDefinition', 'context-type', 'A type of use context assigned to the charge item definition', sptTOKEN, [], 'ChargeItemDefinition.useContext.code', sxpNormal);
  indexes.add('ChargeItemDefinition', 'date', 'The charge item definition publication date', sptDATE, [], 'ChargeItemDefinition.date', sxpNormal);
  indexes.add('ChargeItemDefinition', 'description', 'The description of the charge item definition', sptSTRING, [], 'ChargeItemDefinition.description', sxpNormal);
  indexes.add('ChargeItemDefinition', 'effective', 'The time during which the charge item definition is intended to be in use', sptDATE, [], 'ChargeItemDefinition.effectivePeriod', sxpNormal);
  indexes.add('ChargeItemDefinition', 'identifier', 'External identifier for the charge item definition', sptTOKEN, [], 'ChargeItemDefinition.identifier', sxpNormal);
  indexes.add('ChargeItemDefinition', 'jurisdiction', 'Intended jurisdiction for the charge item definition', sptTOKEN, [], 'ChargeItemDefinition.jurisdiction', sxpNormal);
  indexes.add('ChargeItemDefinition', 'publisher', 'Name of the publisher of the charge item definition', sptSTRING, [], 'ChargeItemDefinition.publisher', sxpNormal);
  indexes.add('ChargeItemDefinition', 'status', 'The current status of the charge item definition', sptTOKEN, [], 'ChargeItemDefinition.status', sxpNormal);
  indexes.add('ChargeItemDefinition', 'title', 'The human-friendly name of the charge item definition', sptSTRING, [], 'ChargeItemDefinition.title', sxpNormal);
  indexes.add('ChargeItemDefinition', 'url', 'The uri that identifies the charge item definition', sptURI, [], 'ChargeItemDefinition.url', sxpNormal);
  indexes.add('ChargeItemDefinition', 'version', 'The business version of the charge item definition', sptTOKEN, [], 'ChargeItemDefinition.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_CLAIM}
procedure TFHIRIndexBuilderR4.buildIndexesForClaim(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Claim', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Claim', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Claim', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Claim', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Claim', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Claim', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Claim', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Claim', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Claim', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Claim', 'care-team', 'Member of the CareTeam', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'Claim.careTeam.provider', sxpNormal);
  indexes.add('Claim', 'created', 'The creation date for the Claim', sptDATE, [], 'Claim.created', sxpNormal);
  indexes.add('Claim', 'encounter', 'Encounters associated with a billed line item', sptREFERENCE, ['Encounter'], 'Claim.item.encounter', sxpNormal);
  indexes.add('Claim', 'enterer', 'The party responsible for the entry of the Claim', sptREFERENCE, ['Practitioner', 'PractitionerRole'], 'Claim.enterer', sxpNormal);
  indexes.add('Claim', 'facility', 'Facility responsible for the goods and services', sptREFERENCE, ['Location'], 'Claim.facility', sxpNormal);
  indexes.add('Claim', 'identifier', 'The primary identifier of the financial resource', sptTOKEN, [], 'Claim.identifier', sxpNormal);
  indexes.add('Claim', 'insurer', 'The target payor/insurer for the Claim', sptREFERENCE, ['Organization'], 'Claim.insurer', sxpNormal);
  indexes.add('Claim', 'patient', 'Patient receiving the services', sptREFERENCE, ['Patient'], 'Claim.patient', sxpNormal);
  indexes.add('Claim', 'payee', 'The party receiving any payment for the Claim', sptREFERENCE, ['Practitioner', 'Organization', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Claim.payee.party', sxpNormal);
  indexes.add('Claim', 'priority', 'Processing priority requested', sptTOKEN, [], 'Claim.priority', sxpNormal);
  indexes.add('Claim', 'provider', 'Provider responsible for the Claim', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'Claim.provider', sxpNormal);
  indexes.add('Claim', 'status', 'The status of the Claim instance.', sptTOKEN, [], 'Claim.status', sxpNormal);
  indexes.add('Claim', 'use', 'The kind of financial resource', sptTOKEN, [], 'Claim.use', sxpNormal);
  compartments.register('Encounter', 'Claim', ['encounter']);
  compartments.register('Patient', 'Claim', ['patient', 'payee']);
  compartments.register('Practitioner', 'Claim', ['enterer', 'provider', 'payee', 'care-team']);
  compartments.register('RelatedPerson', 'Claim', ['payee']);
end;
{$ENDIF}

{$IFDEF FHIR_CLAIMRESPONSE}
procedure TFHIRIndexBuilderR4.buildIndexesForClaimResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ClaimResponse', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ClaimResponse', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ClaimResponse', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ClaimResponse', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ClaimResponse', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ClaimResponse', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ClaimResponse', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ClaimResponse', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ClaimResponse', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ClaimResponse', 'created', 'The creation date', sptDATE, [], 'ClaimResponse.created', sxpNormal);
  indexes.add('ClaimResponse', 'disposition', 'The contents of the disposition message', sptSTRING, [], 'ClaimResponse.disposition', sxpNormal);
  indexes.add('ClaimResponse', 'identifier', 'The identity of the claimresponse', sptTOKEN, [], 'ClaimResponse.identifier', sxpNormal);
  indexes.add('ClaimResponse', 'insurer', 'The organization who generated this resource', sptREFERENCE, ['Organization'], 'ClaimResponse.insurer', sxpNormal);
  indexes.add('ClaimResponse', 'outcome', 'The processing outcome', sptTOKEN, [], 'ClaimResponse.outcome', sxpNormal);
  indexes.add('ClaimResponse', 'patient', 'The subject of care.', sptREFERENCE, ['Patient'], 'ClaimResponse.patient', sxpNormal);
  indexes.add('ClaimResponse', 'payment-date', 'The expected paymentDate', sptDATE, [], 'ClaimResponse.payment.date', sxpNormal);
  indexes.add('ClaimResponse', 'request', 'The claim reference', sptREFERENCE, ['Claim'], 'ClaimResponse.request', sxpNormal);
  indexes.add('ClaimResponse', 'request-provider', 'The Provider of the claim', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'ClaimResponse.requestProvider', sxpNormal);
  indexes.add('ClaimResponse', 'status', 'The status of the claim response', sptTOKEN, [], 'ClaimResponse.status', sxpNormal);
  compartments.register('Patient', 'ClaimResponse', ['patient']);
  compartments.register('Practitioner', 'ClaimResponse', ['request-provider']);
end;
{$ENDIF}

{$IFDEF FHIR_CLINICALIMPRESSION}
procedure TFHIRIndexBuilderR4.buildIndexesForClinicalImpression(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ClinicalImpression', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ClinicalImpression', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ClinicalImpression', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ClinicalImpression', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ClinicalImpression', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ClinicalImpression', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ClinicalImpression', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ClinicalImpression', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ClinicalImpression', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ClinicalImpression', 'action', 'Action taken as part of assessment procedure', sptREFERENCE, ['Appointment', 'MedicationRequest', 'Procedure', 'ServiceRequest'], 'ClinicalImpression.action', sxpNormal);
  indexes.add('ClinicalImpression', 'assessor', 'The clinician performing the assessment', sptREFERENCE, ['Practitioner'], 'ClinicalImpression.assessor', sxpNormal);
  indexes.add('ClinicalImpression', 'context', 'Encounter or Episode created from', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'ClinicalImpression.context', sxpNormal);
  indexes.add('ClinicalImpression', 'date', 'When the assessment was documented', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('ClinicalImpression', 'finding-code', 'What was found', sptTOKEN, [], 'ClinicalImpression.finding.itemCodeableConcept', sxpNormal);
  indexes.add('ClinicalImpression', 'finding-ref', 'What was found', sptREFERENCE, ['Condition', 'Observation', 'Media'], 'ClinicalImpression.finding.itemReference', sxpNormal);
  indexes.add('ClinicalImpression', 'identifier', 'Business identifier', sptTOKEN, [], 'ClinicalImpression.identifier', sxpNormal);
  indexes.add('ClinicalImpression', 'investigation', 'Record of a specific investigation', sptREFERENCE, ['RiskAssessment', 'FamilyMemberHistory', 'Observation', 'Media', 'DiagnosticReport', 'ImagingStudy', 'QuestionnaireResponse'], 'ClinicalImpression.investigation.item', sxpNormal);
  indexes.add('ClinicalImpression', 'patient', 'Patient or group assessed', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('ClinicalImpression', 'previous', 'Reference to last assessment', sptREFERENCE, ['ClinicalImpression'], 'ClinicalImpression.previous', sxpNormal);
  indexes.add('ClinicalImpression', 'problem', 'Relevant impressions of patient state', sptREFERENCE, ['Condition', 'AllergyIntolerance'], 'ClinicalImpression.problem', sxpNormal);
  indexes.add('ClinicalImpression', 'status', 'draft | completed | entered-in-error', sptTOKEN, [], 'ClinicalImpression.status', sxpNormal);
  indexes.add('ClinicalImpression', 'subject', 'Patient or group assessed', sptREFERENCE, ['Group', 'Patient'], 'ClinicalImpression.subject', sxpNormal);
  compartments.register('Encounter', 'ClinicalImpression', ['context']);
  compartments.register('Patient', 'ClinicalImpression', ['subject']);
  compartments.register('Practitioner', 'ClinicalImpression', ['assessor']);
end;
{$ENDIF}

{$IFDEF FHIR_CODESYSTEM}
procedure TFHIRIndexBuilderR4.buildIndexesForCodeSystem(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('CodeSystem', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CodeSystem', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('CodeSystem', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('CodeSystem', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('CodeSystem', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('CodeSystem', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('CodeSystem', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('CodeSystem', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('CodeSystem', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CodeSystem', 'code', 'A code defined in the code system', sptTOKEN, [], 'CodeSystem.concept.code', sxpNormal);
  indexes.add('CodeSystem', 'content-mode', 'not-present | example | fragment | complete | supplement', sptTOKEN, [], 'CodeSystem.content', sxpNormal);
  indexes.add('CodeSystem', 'date', 'The code system publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('CodeSystem', 'description', 'The description of the code system', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('CodeSystem', 'identifier', 'External identifier for the code system', sptTOKEN, [], 'MessageDefinition.identifier | ExpansionProfile.identifier | StructureDefinition.identifier | ConceptMap.identifier | ValueSet.identifier | CodeSystem.identifier | StructureMap.identifier', sxpNormal);
  indexes.add('CodeSystem', 'jurisdiction', 'Intended jurisdiction for the code system', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('CodeSystem', 'language', 'A language in which a designation is provided', sptTOKEN, [], 'CodeSystem.concept.designation.language', sxpNormal);
  indexes.add('CodeSystem', 'name', 'Computationally friendly name of the code system', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('CodeSystem', 'publisher', 'Name of the publisher of the code system', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('CodeSystem', 'status', 'The current status of the code system', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('CodeSystem', 'supplements', 'Code System this adds designations and properties to', sptREFERENCE, ['CodeSystem'], 'CodeSystem.supplements', sxpNormal);
  indexes.add('CodeSystem', 'system', 'The system for any codes defined by this code system (same as ''url'')', sptURI, [], 'CodeSystem.url', sxpNormal);
  indexes.add('CodeSystem', 'title', 'The human-friendly name of the code system', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('CodeSystem', 'url', 'The uri that identifies the code system', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('CodeSystem', 'version', 'The business version of the code system', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_COMMUNICATION}
procedure TFHIRIndexBuilderR4.buildIndexesForCommunication(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Communication', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Communication', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Communication', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Communication', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Communication', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Communication', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Communication', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Communication', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Communication', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Communication', 'based-on', 'Request fulfilled by this communication', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Communication.basedOn', sxpNormal);
  indexes.add('Communication', 'category', 'Message category', sptTOKEN, [], 'Communication.category', sxpNormal);
  indexes.add('Communication', 'context', 'Encounter or episode leading to message', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'Communication.context', sxpNormal);
  indexes.add('Communication', 'encounter', 'Encounter leading to message', sptREFERENCE, ['Encounter'], 'Communication.context', sxpNormal);
  indexes.add('Communication', 'identifier', 'Unique identifier', sptTOKEN, [], 'Communication.identifier', sxpNormal);
  indexes.add('Communication', 'instantiates', 'Instantiates protocol or definition', sptURI, [], 'Communication.instantiates', sxpNormal);
  indexes.add('Communication', 'medium', 'A channel of communication', sptTOKEN, [], 'Communication.medium', sxpNormal);
  indexes.add('Communication', 'part-of', 'Part of this action', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Communication.partOf', sxpNormal);
  indexes.add('Communication', 'patient', 'Focus of message', sptREFERENCE, ['Patient'], 'Communication.subject', sxpNormal);
  indexes.add('Communication', 'received', 'When received', sptDATE, [], 'Communication.received', sxpNormal);
  indexes.add('Communication', 'recipient', 'Message recipient', sptREFERENCE, ['Practitioner', 'Group', 'Organization', 'CareTeam', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Communication.recipient', sxpNormal);
  indexes.add('Communication', 'sender', 'Message sender', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Communication.sender', sxpNormal);
  indexes.add('Communication', 'sent', 'When sent', sptDATE, [], 'Communication.sent', sxpNormal);
  indexes.add('Communication', 'status', 'preparation | in-progress | not-done | suspended | aborted | completed | entered-in-error', sptTOKEN, [], 'Communication.status', sxpNormal);
  indexes.add('Communication', 'subject', 'Focus of message', sptREFERENCE, ['Group', 'Patient'], 'Communication.subject', sxpNormal);
  compartments.register('Device', 'Communication', ['sender', 'recipient']);
  compartments.register('Encounter', 'Communication', ['context']);
  compartments.register('Patient', 'Communication', ['subject', 'sender', 'recipient']);
  compartments.register('Practitioner', 'Communication', ['sender', 'recipient']);
  compartments.register('RelatedPerson', 'Communication', ['sender', 'recipient']);
end;
{$ENDIF}

{$IFDEF FHIR_COMMUNICATIONREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForCommunicationRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('CommunicationRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CommunicationRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('CommunicationRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('CommunicationRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('CommunicationRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('CommunicationRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('CommunicationRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('CommunicationRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('CommunicationRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CommunicationRequest', 'authored', 'When request transitioned to being actionable', sptDATE, [], 'CommunicationRequest.authoredOn', sxpNormal);
  indexes.add('CommunicationRequest', 'based-on', 'Fulfills plan or proposal', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'CommunicationRequest.basedOn', sxpNormal);
  indexes.add('CommunicationRequest', 'category', 'Message category', sptTOKEN, [], 'CommunicationRequest.category', sxpNormal);
  indexes.add('CommunicationRequest', 'context', 'Encounter or episode leading to message', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'CommunicationRequest.context', sxpNormal);
  indexes.add('CommunicationRequest', 'encounter', 'Encounter leading to message', sptREFERENCE, ['Encounter'], 'CommunicationRequest.context', sxpNormal);
  indexes.add('CommunicationRequest', 'group-identifier', 'Composite request this is part of', sptTOKEN, [], 'CommunicationRequest.groupIdentifier', sxpNormal);
  indexes.add('CommunicationRequest', 'identifier', 'Unique identifier', sptTOKEN, [], 'CommunicationRequest.identifier', sxpNormal);
  indexes.add('CommunicationRequest', 'medium', 'A channel of communication', sptTOKEN, [], 'CommunicationRequest.medium', sxpNormal);
  indexes.add('CommunicationRequest', 'occurrence', 'When scheduled', sptDATE, [], 'CommunicationRequest.occurrence.as(dateTime)', sxpNormal);
  indexes.add('CommunicationRequest', 'patient', 'Focus of message', sptREFERENCE, ['Patient'], 'CommunicationRequest.subject', sxpNormal);
  indexes.add('CommunicationRequest', 'priority', 'Message urgency', sptTOKEN, [], 'CommunicationRequest.priority', sxpNormal);
  indexes.add('CommunicationRequest', 'recipient', 'Message recipient', sptREFERENCE, ['Practitioner', 'Group', 'Organization', 'CareTeam', 'Device', 'Patient', 'RelatedPerson'], 'CommunicationRequest.recipient', sxpNormal);
  indexes.add('CommunicationRequest', 'replaces', 'Request(s) replaced by this request', sptREFERENCE, ['CommunicationRequest'], 'CommunicationRequest.replaces', sxpNormal);
  indexes.add('CommunicationRequest', 'requester', 'Who/what is requesting service', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'CommunicationRequest.requester', sxpNormal);
  indexes.add('CommunicationRequest', 'sender', 'Message sender', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'HealthcareService', 'PractitionerRole', 'RelatedPerson'], 'CommunicationRequest.sender', sxpNormal);
  indexes.add('CommunicationRequest', 'status', 'draft | active | suspended | cancelled | completed | entered-in-error | unknown', sptTOKEN, [], 'CommunicationRequest.status', sxpNormal);
  indexes.add('CommunicationRequest', 'subject', 'Focus of message', sptREFERENCE, ['Group', 'Patient'], 'CommunicationRequest.subject', sxpNormal);
  compartments.register('Device', 'CommunicationRequest', ['sender', 'recipient']);
  compartments.register('Encounter', 'CommunicationRequest', ['context']);
  compartments.register('Patient', 'CommunicationRequest', ['subject', 'sender', 'recipient', 'requester']);
  compartments.register('Practitioner', 'CommunicationRequest', ['sender', 'recipient', 'requester']);
  compartments.register('RelatedPerson', 'CommunicationRequest', ['sender', 'recipient', 'requester']);
end;
{$ENDIF}

{$IFDEF FHIR_COMPARTMENTDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForCompartmentDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('CompartmentDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CompartmentDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('CompartmentDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('CompartmentDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('CompartmentDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('CompartmentDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('CompartmentDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('CompartmentDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('CompartmentDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('CompartmentDefinition', 'code', 'Patient | Encounter | RelatedPerson | Practitioner | Device', sptTOKEN, [], 'CompartmentDefinition.code', sxpNormal);
  indexes.add('CompartmentDefinition', 'context-type', 'A type of use context assigned to the compartment definition', sptTOKEN, [], 'SearchParameter.useContext.code | OperationDefinition.useContext.code | CompartmentDefinition.useContext.code', sxpNormal);
  indexes.add('CompartmentDefinition', 'date', 'The compartment definition publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('CompartmentDefinition', 'description', 'The description of the compartment definition', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('CompartmentDefinition', 'jurisdiction', 'Intended jurisdiction for the compartment definition', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('CompartmentDefinition', 'name', 'Computationally friendly name of the compartment definition', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('CompartmentDefinition', 'publisher', 'Name of the publisher of the compartment definition', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('CompartmentDefinition', 'resource', 'Name of resource type', sptTOKEN, [], 'CompartmentDefinition.resource.code', sxpNormal);
  indexes.add('CompartmentDefinition', 'status', 'The current status of the compartment definition', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('CompartmentDefinition', 'title', 'The human-friendly name of the compartment definition', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('CompartmentDefinition', 'url', 'The uri that identifies the compartment definition', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_COMPOSITION}
procedure TFHIRIndexBuilderR4.buildIndexesForComposition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Composition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Composition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Composition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Composition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Composition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Composition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Composition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Composition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Composition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Composition', 'attester', 'Who attested the composition', sptREFERENCE, ['Practitioner', 'Organization', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Composition.attester.party', sxpNormal);
  indexes.add('Composition', 'author', 'Who and/or what authored the composition', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Composition.author', sxpNormal);
  indexes.add('Composition', 'class', 'Categorization of Composition', sptTOKEN, [], 'Composition.class', sxpNormal);
  indexes.add('Composition', 'confidentiality', 'As defined by affinity domain', sptTOKEN, [], 'Composition.confidentiality', sxpNormal);
  indexes.add('Composition', 'context', 'Code(s) that apply to the event being documented', sptTOKEN, [], 'Composition.event.code', sxpNormal);
  indexes.add('Composition', 'date', 'Composition editing time', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('Composition', 'encounter', 'Context of the Composition', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('Composition', 'entry', 'A reference to data that supports this section', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Composition.section.entry', sxpNormal);
  indexes.add('Composition', 'identifier', 'Version-independent identifier for the Composition', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Composition', 'patient', 'Who and/or what the composition is about', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Composition', 'period', 'The period covered by the documentation', sptDATE, [], 'Composition.event.period', sxpNormal);
  indexes.add('Composition', 'related-id', 'Target of the relationship', sptTOKEN, [], 'Composition.relatesTo.target.as(Identifier)', sxpNormal);
  indexes.add('Composition', 'related-ref', 'Target of the relationship', sptREFERENCE, ['Composition'], 'Composition.relatesTo.target.as(Reference)', sxpNormal);
  indexes.add('Composition', 'section', 'Classification of section (recommended)', sptTOKEN, [], 'Composition.section.code', sxpNormal);
  indexes.add('Composition', 'status', 'preliminary | final | amended | entered-in-error', sptTOKEN, [], 'Composition.status', sxpNormal);
  indexes.add('Composition', 'subject', 'Who and/or what the composition is about', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Composition.subject', sxpNormal);
  indexes.add('Composition', 'title', 'Human Readable name/title', sptSTRING, [], 'Composition.title', sxpNormal);
  indexes.add('Composition', 'type', 'Kind of composition (LOINC if possible)', sptTOKEN, [], 'DocumentManifest.type | DocumentReference.type | Encounter.type | AllergyIntolerance.type | EpisodeOfCare.type | Composition.type', sxpNormal);
  compartments.register('Device', 'Composition', ['author']);
  compartments.register('Encounter', 'Composition', ['encounter']);
  compartments.register('Patient', 'Composition', ['subject', 'author', 'attester']);
  compartments.register('Practitioner', 'Composition', ['subject', 'author', 'attester']);
  compartments.register('RelatedPerson', 'Composition', ['author']);
end;
{$ENDIF}

{$IFDEF FHIR_CONCEPTMAP}
procedure TFHIRIndexBuilderR4.buildIndexesForConceptMap(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ConceptMap', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ConceptMap', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ConceptMap', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ConceptMap', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ConceptMap', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ConceptMap', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ConceptMap', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ConceptMap', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ConceptMap', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ConceptMap', 'date', 'The concept map publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('ConceptMap', 'dependson', 'Reference to property mapping depends on', sptURI, [], 'ConceptMap.group.element.target.dependsOn.property', sxpNormal);
  indexes.add('ConceptMap', 'description', 'The description of the concept map', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('ConceptMap', 'identifier', 'External identifier for the concept map', sptTOKEN, [], 'MessageDefinition.identifier | ExpansionProfile.identifier | StructureDefinition.identifier | ConceptMap.identifier | ValueSet.identifier | CodeSystem.identifier | StructureMap.identifier', sxpNormal);
  indexes.add('ConceptMap', 'jurisdiction', 'Intended jurisdiction for the concept map', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('ConceptMap', 'name', 'Computationally friendly name of the concept map', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('ConceptMap', 'other', 'Canonical URI for an additional ConceptMap to use for mapping if the source concept is unmapped', sptREFERENCE, ['ConceptMap'], 'ConceptMap.group.unmapped.url', sxpNormal);
  indexes.add('ConceptMap', 'product', 'Reference to property mapping depends on', sptURI, [], 'ConceptMap.group.element.target.product.property', sxpNormal);
  indexes.add('ConceptMap', 'publisher', 'Name of the publisher of the concept map', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('ConceptMap', 'source', 'The source value set that contains the concepts that are being mapped', sptREFERENCE, ['ValueSet'], 'ConceptMap.source.as(canonical)', sxpNormal);
  indexes.add('ConceptMap', 'source-code', 'Identifies element being mapped', sptTOKEN, [], 'ConceptMap.group.element.code', sxpNormal);
  indexes.add('ConceptMap', 'source-system', 'Source system where concepts to be mapped are defined', sptURI, [], 'ConceptMap.group.source', sxpNormal);
  indexes.add('ConceptMap', 'source-uri', 'The source value set that contains the concepts that are being mapped', sptREFERENCE, ['ValueSet'], 'ConceptMap.source.as(uri)', sxpNormal);
  indexes.add('ConceptMap', 'status', 'The current status of the concept map', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('ConceptMap', 'target', 'The target value set which provides context for the mappings', sptREFERENCE, ['ValueSet'], 'ConceptMap.target.as(canonical)', sxpNormal);
  indexes.add('ConceptMap', 'target-code', 'Code that identifies the target element', sptTOKEN, [], 'ConceptMap.group.element.target.code', sxpNormal);
  indexes.add('ConceptMap', 'target-system', 'Target system that the concepts are to be mapped to', sptURI, [], 'ConceptMap.group.target', sxpNormal);
  indexes.add('ConceptMap', 'target-uri', 'The target value set which provides context for the mappings', sptREFERENCE, ['ValueSet'], 'ConceptMap.target.as(uri)', sxpNormal);
  indexes.add('ConceptMap', 'title', 'The human-friendly name of the concept map', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('ConceptMap', 'url', 'The uri that identifies the concept map', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('ConceptMap', 'version', 'The business version of the concept map', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_CONDITION}
procedure TFHIRIndexBuilderR4.buildIndexesForCondition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Condition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Condition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Condition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Condition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Condition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Condition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Condition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Condition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Condition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Condition', 'abatement-age', 'Abatement as age or age range', sptQUANTITY, [], 'Condition.abatement.as(Age) | Condition.abatement.as(Range) | Condition.abatement.as(Age)', sxpNormal);
  indexes.add('Condition', 'abatement-date', 'Date-related abatements (dateTime and period)', sptDATE, [], 'Condition.abatement.as(dateTime) | Condition.abatement.as(Period)', sxpNormal);
  indexes.add('Condition', 'abatement-string', 'Abatement as a string', sptSTRING, [], 'Condition.abatement.as(string)', sxpNormal);
  indexes.add('Condition', 'asserted-date', 'Date record was believed accurate', sptDATE, [], 'Condition.assertedDate', sxpNormal);
  indexes.add('Condition', 'asserter', 'Person who asserts this condition', sptREFERENCE, ['Practitioner', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Condition.asserter', sxpNormal);
  indexes.add('Condition', 'body-site', 'Anatomical location, if relevant', sptTOKEN, [], 'Condition.bodySite', sxpNormal);
  indexes.add('Condition', 'category', 'The category of the condition', sptTOKEN, [], 'Condition.category', sxpNormal);
  indexes.add('Condition', 'clinical-status', 'The clinical status of the condition', sptTOKEN, [], 'Condition.clinicalStatus', sxpNormal);
  indexes.add('Condition', 'code', 'Code for the condition', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('Condition', 'context', 'Encounter or episode when condition first asserted', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'Condition.context', sxpNormal);
  indexes.add('Condition', 'encounter', 'Encounter when condition first asserted', sptREFERENCE, ['Encounter'], 'Condition.context', sxpNormal);
  indexes.add('Condition', 'evidence', 'Manifestation/symptom', sptTOKEN, [], 'Condition.evidence.code', sxpNormal);
  indexes.add('Condition', 'evidence-detail', 'Supporting information found elsewhere', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Condition.evidence.detail', sxpNormal);
  indexes.add('Condition', 'identifier', 'A unique identifier of the condition record', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Condition', 'onset-age', 'Onsets as age or age range', sptQUANTITY, [], 'Condition.onset.as(Age) | Condition.onset.as(Range)', sxpNormal);
  indexes.add('Condition', 'onset-date', 'Date related onsets (dateTime and Period)', sptDATE, [], 'Condition.onset.as(dateTime) | Condition.onset.as(Period)', sxpNormal);
  indexes.add('Condition', 'onset-info', 'Onsets as a string', sptSTRING, [], 'Condition.onset.as(string)', sxpNormal);
  indexes.add('Condition', 'patient', 'Who has the condition?', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Condition', 'severity', 'The severity of the condition', sptTOKEN, [], 'Condition.severity', sxpNormal);
  indexes.add('Condition', 'stage', 'Simple summary (disease specific)', sptTOKEN, [], 'Condition.stage.summary', sxpNormal);
  indexes.add('Condition', 'subject', 'Who has the condition?', sptREFERENCE, ['Group', 'Patient'], 'Condition.subject', sxpNormal);
  indexes.add('Condition', 'verification-status', 'unconfirmed | provisional | differential | confirmed | refuted | entered-in-error', sptTOKEN, [], 'Condition.verificationStatus', sxpNormal);
  compartments.register('Encounter', 'Condition', ['context']);
  compartments.register('Patient', 'Condition', ['patient', 'asserter']);
  compartments.register('Practitioner', 'Condition', ['asserter']);
  compartments.register('RelatedPerson', 'Condition', ['asserter']);
end;
{$ENDIF}

{$IFDEF FHIR_CONSENT}
procedure TFHIRIndexBuilderR4.buildIndexesForConsent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Consent', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Consent', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Consent', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Consent', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Consent', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Consent', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Consent', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Consent', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Consent', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Consent', 'action', 'Actions controlled by this rule', sptTOKEN, [], 'Consent.provision.action', sxpNormal);
  indexes.add('Consent', 'actor', 'Resource for the actor (or group, by role)', sptREFERENCE, ['Practitioner', 'Group', 'Organization', 'CareTeam', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Consent.provision.actor.reference', sxpNormal);
  indexes.add('Consent', 'category', 'Classification of the consent statement - for indexing/retrieval', sptTOKEN, [], 'Consent.category', sxpNormal);
  indexes.add('Consent', 'consentor', 'Who is agreeing to the policy and rules', sptREFERENCE, ['Practitioner', 'Organization', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Consent.performer', sxpNormal);
  indexes.add('Consent', 'data', 'The actual data reference', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Consent.provision.data.reference', sxpNormal);
  indexes.add('Consent', 'date', 'When this Consent was created or indexed', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('Consent', 'identifier', 'Identifier for this record (external references)', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Consent', 'organization', 'Custodian of the consent', sptREFERENCE, ['Organization'], 'Consent.organization', sxpNormal);
  indexes.add('Consent', 'patient', 'Who the consent applies to', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Consent', 'period', 'Timeframe for this rule', sptDATE, [], 'Consent.provision.period', sxpNormal);
  indexes.add('Consent', 'purpose', 'Context of activities covered by this rule', sptTOKEN, [], 'Consent.provision.purpose', sxpNormal);
  indexes.add('Consent', 'scope', 'Which of the four areas this resource covers (extensible)', sptTOKEN, [], 'Consent.scope', sxpNormal);
  indexes.add('Consent', 'securitylabel', 'Security Labels that define affected resources', sptTOKEN, [], 'Consent.provision.securityLabel', sxpNormal);
  indexes.add('Consent', 'source-identifier', 'Search by token to an identifier', sptTOKEN, [], 'Consent.source', sxpNormal);
  indexes.add('Consent', 'source-reference', 'Search by reference to a Consent, DocumentReference, Contract  or QuestionnaireResponse', sptREFERENCE, ['Consent', 'Contract', 'QuestionnaireResponse', 'DocumentReference'], 'Consent.source', sxpNormal);
  indexes.add('Consent', 'status', 'draft | proposed | active | rejected | inactive | entered-in-error', sptTOKEN, [], 'Consent.status', sxpNormal);
  compartments.register('Patient', 'Consent', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_CONTRACT}
procedure TFHIRIndexBuilderR4.buildIndexesForContract(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Contract', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Contract', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Contract', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Contract', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Contract', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Contract', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Contract', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Contract', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Contract', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Contract', 'authority', 'The authority of the contract', sptREFERENCE, ['Organization'], 'Contract.authority', sxpNormal);
  indexes.add('Contract', 'domain', 'The domain of the contract', sptREFERENCE, ['Location'], 'Contract.domain', sxpNormal);
  indexes.add('Contract', 'identifier', 'The identity of the contract', sptTOKEN, [], 'Contract.identifier', sxpNormal);
  indexes.add('Contract', 'issued', 'The date/time the contract was issued', sptDATE, [], 'Contract.issued', sxpNormal);
  indexes.add('Contract', 'patient', 'The identity of the subject of the contract (if a patient)', sptREFERENCE, ['Patient'], 'Contract.subject', sxpNormal);
  indexes.add('Contract', 'signer', 'Contract Signatory Party', sptREFERENCE, ['Practitioner', 'Organization', 'Patient', 'RelatedPerson'], 'Contract.signer.party', sxpNormal);
  indexes.add('Contract', 'status', 'The status of the contract', sptTOKEN, [], 'Contract.status', sxpNormal);
  indexes.add('Contract', 'subject', 'The identity of the subject of the contract', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Contract.subject', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_COVERAGE}
procedure TFHIRIndexBuilderR4.buildIndexesForCoverage(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Coverage', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Coverage', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Coverage', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Coverage', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Coverage', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Coverage', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Coverage', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Coverage', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Coverage', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Coverage', 'beneficiary', 'Covered party', sptREFERENCE, ['Patient'], 'Coverage.beneficiary', sxpNormal);
  indexes.add('Coverage', 'dependent', 'Dependent number', sptSTRING, [], 'Coverage.dependent', sxpNormal);
  indexes.add('Coverage', 'identifier', 'The primary identifier of the insured and the coverage', sptTOKEN, [], 'Coverage.identifier', sxpNormal);
  indexes.add('Coverage', 'patient', 'Retrieve coverages for a patient', sptREFERENCE, ['Patient'], 'Coverage.beneficiary', sxpNormal);
  indexes.add('Coverage', 'payor', 'The identity of the insurer or party paying for services', sptREFERENCE, ['Organization', 'Patient', 'RelatedPerson'], 'Coverage.payor', sxpNormal);
  indexes.add('Coverage', 'policy-holder', 'Reference to the policyholder', sptREFERENCE, ['Organization', 'Patient', 'RelatedPerson'], 'Coverage.policyHolder', sxpNormal);
  indexes.add('Coverage', 'status', 'The status of the Coverage', sptTOKEN, [], 'Coverage.status', sxpNormal);
  indexes.add('Coverage', 'subscriber', 'Reference to the subscriber', sptREFERENCE, ['Patient', 'RelatedPerson'], 'Coverage.subscriber', sxpNormal);
  indexes.add('Coverage', 'type', 'The kind of coverage (health plan, auto, Workers Compensation)', sptTOKEN, [], 'Coverage.type', sxpNormal);
  compartments.register('Patient', 'Coverage', ['policy-holder', 'subscriber', 'beneficiary', 'payor']);
  compartments.register('RelatedPerson', 'Coverage', ['policy-holder', 'subscriber', 'payor']);
end;
{$ENDIF}

{$IFDEF FHIR_DETECTEDISSUE}
procedure TFHIRIndexBuilderR4.buildIndexesForDetectedIssue(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DetectedIssue', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DetectedIssue', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DetectedIssue', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DetectedIssue', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DetectedIssue', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DetectedIssue', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DetectedIssue', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DetectedIssue', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DetectedIssue', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DetectedIssue', 'author', 'The provider or device that identified the issue', sptREFERENCE, ['Practitioner', 'Device'], 'DetectedIssue.author', sxpNormal);
  indexes.add('DetectedIssue', 'category', 'Issue Category, e.g. drug-drug, duplicate therapy, etc.', sptTOKEN, [], 'DetectedIssue.category', sxpNormal);
  indexes.add('DetectedIssue', 'date', 'When identified', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('DetectedIssue', 'identifier', 'Unique id for the detected issue', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('DetectedIssue', 'implicated', 'Problem resource', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'DetectedIssue.implicated', sxpNormal);
  indexes.add('DetectedIssue', 'patient', 'Associated patient', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  compartments.register('Device', 'DetectedIssue', ['author']);
  compartments.register('Patient', 'DetectedIssue', ['patient']);
  compartments.register('Practitioner', 'DetectedIssue', ['author']);
end;
{$ENDIF}

{$IFDEF FHIR_DEVICE}
procedure TFHIRIndexBuilderR4.buildIndexesForDevice(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Device', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Device', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Device', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Device', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Device', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Device', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Device', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Device', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Device', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Device', 'device-name', 'A server defined search that may match any of the string fields in the Device.udi.name  or Device.type.coding.display or  Device.type.text', sptSTRING, [], 'Device.udi.name | Device.type.text | Device.type.coding.display', sxpNormal);
  indexes.add('Device', 'identifier', 'Instance id from manufacturer, owner, and others', sptTOKEN, [], 'Device.identifier', sxpNormal);
  indexes.add('Device', 'location', 'A location, where the resource is found', sptREFERENCE, ['Location'], 'Device.location', sxpNormal);
  indexes.add('Device', 'manufacturer', 'The manufacturer of the device', sptSTRING, [], 'Device.manufacturer', sxpNormal);
  indexes.add('Device', 'model', 'The model of the device', sptSTRING, [], 'Device.model', sxpNormal);
  indexes.add('Device', 'organization', 'The organization responsible for the device', sptREFERENCE, ['Organization'], 'Device.owner', sxpNormal);
  indexes.add('Device', 'patient', 'Patient information, if the resource is affixed to a person', sptREFERENCE, ['Patient'], 'Device.patient', sxpNormal);
  indexes.add('Device', 'status', 'active | inactive | entered-in-error | unknown', sptTOKEN, [], 'Device.status', sxpNormal);
  indexes.add('Device', 'type', 'The type of the device', sptTOKEN, [], 'Device.type', sxpNormal);
  indexes.add('Device', 'udi-carrier', 'UDI Barcode (RFID or other technology) string either in HRF format or AIDC format converted to base64 string.', sptSTRING, [], 'Device.udi.carrierHRF | Device.udi.carrierAIDC', sxpNormal);
  indexes.add('Device', 'udi-di', 'The udi Device Identifier (DI)', sptSTRING, [], 'Device.udi.deviceIdentifier', sxpNormal);
  indexes.add('Device', 'url', 'Network address to contact device', sptURI, [], 'Device.url', sxpNormal);
  compartments.register('Device', 'Device', ['{def}']);
end;
{$ENDIF}

{$IFDEF FHIR_DEVICECOMPONENT}
procedure TFHIRIndexBuilderR4.buildIndexesForDeviceComponent(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DeviceComponent', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceComponent', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DeviceComponent', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DeviceComponent', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DeviceComponent', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DeviceComponent', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DeviceComponent', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DeviceComponent', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DeviceComponent', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceComponent', 'identifier', 'The identifier of the component', sptTOKEN, [], 'DeviceComponent.identifier', sxpNormal);
  indexes.add('DeviceComponent', 'parent', 'The parent DeviceComponent resource', sptREFERENCE, ['DeviceComponent'], 'DeviceComponent.parent', sxpNormal);
  indexes.add('DeviceComponent', 'source', 'The device source', sptREFERENCE, ['Device'], 'DeviceComponent.source', sxpNormal);
  indexes.add('DeviceComponent', 'type', 'The device component type', sptTOKEN, [], 'DeviceComponent.type', sxpNormal);
  compartments.register('Device', 'DeviceComponent', ['source']);
end;
{$ENDIF}

{$IFDEF FHIR_DEVICEMETRIC}
procedure TFHIRIndexBuilderR4.buildIndexesForDeviceMetric(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DeviceMetric', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceMetric', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DeviceMetric', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DeviceMetric', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DeviceMetric', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DeviceMetric', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DeviceMetric', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DeviceMetric', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DeviceMetric', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceMetric', 'category', 'The category of the metric', sptTOKEN, [], 'DeviceMetric.category', sxpNormal);
  indexes.add('DeviceMetric', 'identifier', 'The identifier of the metric', sptTOKEN, [], 'DeviceMetric.identifier', sxpNormal);
  indexes.add('DeviceMetric', 'parent', 'The parent DeviceMetric resource', sptREFERENCE, ['DeviceComponent'], 'DeviceMetric.parent', sxpNormal);
  indexes.add('DeviceMetric', 'source', 'The device resource', sptREFERENCE, ['Device'], 'DeviceMetric.source', sxpNormal);
  indexes.add('DeviceMetric', 'type', 'The component type', sptTOKEN, [], 'DeviceMetric.type', sxpNormal);
  compartments.register('Device', 'DeviceMetric', ['source']);
end;
{$ENDIF}

{$IFDEF FHIR_DEVICEREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForDeviceRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DeviceRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DeviceRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DeviceRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DeviceRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DeviceRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DeviceRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DeviceRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DeviceRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceRequest', 'authored-on', 'When the request transitioned to being actionable', sptDATE, [], 'DeviceRequest.authoredOn', sxpNormal);
  indexes.add('DeviceRequest', 'based-on', 'Plan/proposal/order fulfilled by this request', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'DeviceRequest.basedOn', sxpNormal);
  indexes.add('DeviceRequest', 'code', 'Code for what is being requested/ordered', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('DeviceRequest', 'device', 'Reference to resource that is being requested/ordered', sptREFERENCE, ['Device'], 'DeviceRequest.code.as(Reference)', sxpNormal);
  indexes.add('DeviceRequest', 'encounter', 'Encounter or Episode during which request was created', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('DeviceRequest', 'event-date', 'When service should occur', sptDATE, [], 'DeviceRequest.occurrence.as(dateTime) | DeviceRequest.occurrence.as(Period)', sxpNormal);
  indexes.add('DeviceRequest', 'group-identifier', 'Composite request this is part of', sptTOKEN, [], 'DeviceRequest.groupIdentifier', sxpNormal);
  indexes.add('DeviceRequest', 'identifier', 'Business identifier for request/order', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('DeviceRequest', 'instantiates', 'Protocol or definition followed by this request', sptURI, [], 'DeviceRequest.instantiates', sxpNormal);
  indexes.add('DeviceRequest', 'insurance', 'Associated insurance coverage', sptREFERENCE, ['ClaimResponse', 'Coverage'], 'DeviceRequest.insurance', sxpNormal);
  indexes.add('DeviceRequest', 'intent', 'proposal | plan | original-order |reflex-order', sptTOKEN, [], 'DeviceRequest.intent', sxpNormal);
  indexes.add('DeviceRequest', 'patient', 'Individual the service is ordered for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('DeviceRequest', 'performer', 'Desired performer for service', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'HealthcareService', 'PractitionerRole', 'RelatedPerson'], 'DeviceRequest.performer', sxpNormal);
  indexes.add('DeviceRequest', 'priorrequest', 'Request takes the place of referenced completed or terminated requests', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'DeviceRequest.priorRequest', sxpNormal);
  indexes.add('DeviceRequest', 'requester', 'Who/what is requesting service', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'PractitionerRole'], 'DeviceRequest.requester', sxpNormal);
  indexes.add('DeviceRequest', 'status', 'entered-in-error | draft | active |suspended | completed', sptTOKEN, [], 'DeviceRequest.status', sxpNormal);
  indexes.add('DeviceRequest', 'subject', 'Individual the service is ordered for', sptREFERENCE, ['Group', 'Device', 'Patient', 'Location'], 'DeviceRequest.subject', sxpNormal);
  compartments.register('Device', 'DeviceRequest', ['device', 'subject', 'requester', 'performer']);
  compartments.register('Encounter', 'DeviceRequest', ['encounter']);
  compartments.register('Patient', 'DeviceRequest', ['subject', 'requester', 'performer']);
  compartments.register('Practitioner', 'DeviceRequest', ['requester', 'performer']);
end;
{$ENDIF}

{$IFDEF FHIR_DEVICEUSESTATEMENT}
procedure TFHIRIndexBuilderR4.buildIndexesForDeviceUseStatement(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DeviceUseStatement', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceUseStatement', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DeviceUseStatement', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DeviceUseStatement', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DeviceUseStatement', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DeviceUseStatement', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DeviceUseStatement', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DeviceUseStatement', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DeviceUseStatement', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DeviceUseStatement', 'device', 'Search by device', sptREFERENCE, ['Device'], 'DeviceUseStatement.device', sxpNormal);
  indexes.add('DeviceUseStatement', 'identifier', 'Search by identifier', sptTOKEN, [], 'DeviceUseStatement.identifier', sxpNormal);
  indexes.add('DeviceUseStatement', 'patient', 'Search by subject - a patient', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('DeviceUseStatement', 'subject', 'Search by subject', sptREFERENCE, ['Group', 'Patient'], 'DeviceUseStatement.subject', sxpNormal);
  compartments.register('Device', 'DeviceUseStatement', ['device']);
  compartments.register('Patient', 'DeviceUseStatement', ['subject']);
end;
{$ENDIF}

{$IFDEF FHIR_DIAGNOSTICREPORT}
procedure TFHIRIndexBuilderR4.buildIndexesForDiagnosticReport(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DiagnosticReport', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DiagnosticReport', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DiagnosticReport', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DiagnosticReport', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DiagnosticReport', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DiagnosticReport', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DiagnosticReport', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DiagnosticReport', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DiagnosticReport', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DiagnosticReport', 'based-on', 'Reference to the service request.', sptREFERENCE, ['CarePlan', 'MedicationRequest', 'NutritionOrder', 'ServiceRequest', 'ImmunizationRecommendation'], 'DiagnosticReport.basedOn', sxpNormal);
  indexes.add('DiagnosticReport', 'category', 'Which diagnostic discipline/department created the report', sptTOKEN, [], 'DiagnosticReport.category', sxpNormal);
  indexes.add('DiagnosticReport', 'code', 'The code for the report, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('DiagnosticReport', 'context', 'Healthcare event (Episode of Care or Encounter) related to the report', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DiagnosticReport.context', sxpNormal);
  indexes.add('DiagnosticReport', 'date', 'The clinically relevant time of the report', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('DiagnosticReport', 'diagnosis', 'A coded diagnosis on the report', sptTOKEN, [], 'DiagnosticReport.codedDiagnosis', sxpNormal);
  indexes.add('DiagnosticReport', 'encounter', 'The Encounter when the order was made', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('DiagnosticReport', 'identifier', 'An identifier for the report', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('DiagnosticReport', 'issued', 'When the report was issued', sptDATE, [], 'DiagnosticReport.issued', sxpNormal);
  indexes.add('DiagnosticReport', 'media', 'A reference to the image source.', sptREFERENCE, ['Media'], 'DiagnosticReport.media.link', sxpNormal);
  indexes.add('DiagnosticReport', 'patient', 'The subject of the report if a patient', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('DiagnosticReport', 'performer', 'Who is responsible for the report', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'PractitionerRole'], 'DiagnosticReport.performer', sxpNormal);
  indexes.add('DiagnosticReport', 'result', 'Link to an atomic result (observation resource)', sptREFERENCE, ['Observation'], 'DiagnosticReport.result', sxpNormal);
  indexes.add('DiagnosticReport', 'results-interpreter', 'Who was the source of the report', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'PractitionerRole'], 'DiagnosticReport.resultsInterpreter', sxpNormal);
  indexes.add('DiagnosticReport', 'specimen', 'The specimen details', sptREFERENCE, ['Specimen'], 'DiagnosticReport.specimen', sxpNormal);
  indexes.add('DiagnosticReport', 'status', 'The status of the report', sptTOKEN, [], 'DiagnosticReport.status', sxpNormal);
  indexes.add('DiagnosticReport', 'subject', 'The subject of the report', sptREFERENCE, ['Group', 'Device', 'Patient', 'Location'], 'DiagnosticReport.subject', sxpNormal);
  compartments.register('Device', 'DiagnosticReport', ['subject']);
  compartments.register('Encounter', 'DiagnosticReport', ['encounter']);
  compartments.register('Patient', 'DiagnosticReport', ['subject']);
  compartments.register('Practitioner', 'DiagnosticReport', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_DOCUMENTMANIFEST}
procedure TFHIRIndexBuilderR4.buildIndexesForDocumentManifest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DocumentManifest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DocumentManifest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DocumentManifest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DocumentManifest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DocumentManifest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DocumentManifest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DocumentManifest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DocumentManifest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DocumentManifest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DocumentManifest', 'agent', 'Who and/or what had an agent participation', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'DocumentManifest.agent.who', sxpNormal);
  indexes.add('DocumentManifest', 'created', 'When this document manifest created', sptDATE, [], 'DocumentManifest.created', sxpNormal);
  indexes.add('DocumentManifest', 'description', 'Human-readable description (title)', sptSTRING, [], 'DocumentManifest.description', sxpNormal);
  indexes.add('DocumentManifest', 'identifier', 'Unique Identifier for the set of documents', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('DocumentManifest', 'item', 'Items in manifest', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'DocumentManifest.content', sxpNormal);
  indexes.add('DocumentManifest', 'patient', 'The subject of the set of documents', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('DocumentManifest', 'recipient', 'Intended to get notified about this set of documents', sptREFERENCE, ['Practitioner', 'Organization', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'DocumentManifest.recipient', sxpNormal);
  indexes.add('DocumentManifest', 'related-id', 'Identifiers of things that are related', sptTOKEN, [], 'DocumentManifest.related.identifier', sxpNormal);
  indexes.add('DocumentManifest', 'related-ref', 'Related Resource', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'DocumentManifest.related.ref', sxpNormal);
  indexes.add('DocumentManifest', 'source', 'The source system/application/software', sptURI, [], 'DocumentManifest.source', sxpNormal);
  indexes.add('DocumentManifest', 'status', 'current | superseded | entered-in-error', sptTOKEN, [], 'DocumentManifest.status', sxpNormal);
  indexes.add('DocumentManifest', 'subject', 'The subject of the set of documents', sptREFERENCE, ['Practitioner', 'Group', 'Device', 'Patient'], 'DocumentManifest.subject', sxpNormal);
  indexes.add('DocumentManifest', 'type', 'Kind of document set', sptTOKEN, [], 'DocumentManifest.type | DocumentReference.type | Encounter.type | AllergyIntolerance.type | EpisodeOfCare.type | Composition.type', sxpNormal);
  compartments.register('Device', 'DocumentManifest', ['subject', 'agent']);
  compartments.register('Encounter', 'DocumentManifest', ['related-ref']);
  compartments.register('Patient', 'DocumentManifest', ['subject', 'agent', 'recipient']);
  compartments.register('Practitioner', 'DocumentManifest', ['subject', 'agent', 'recipient']);
  compartments.register('RelatedPerson', 'DocumentManifest', ['agent']);
end;
{$ENDIF}

{$IFDEF FHIR_DOCUMENTREFERENCE}
procedure TFHIRIndexBuilderR4.buildIndexesForDocumentReference(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('DocumentReference', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DocumentReference', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('DocumentReference', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('DocumentReference', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('DocumentReference', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('DocumentReference', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('DocumentReference', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('DocumentReference', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('DocumentReference', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('DocumentReference', 'agent', 'Who and/or what authored the document', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'DocumentReference.agent.who', sxpNormal);
  indexes.add('DocumentReference', 'authenticator', 'Who/what authenticated the document', sptREFERENCE, ['Practitioner', 'Organization'], 'DocumentReference.authenticator', sxpNormal);
  indexes.add('DocumentReference', 'class', 'Categorization of document', sptTOKEN, [], 'DocumentReference.class', sxpNormal);
  indexes.add('DocumentReference', 'contenttype', 'Mime type of the content, with charset etc.', sptTOKEN, [], 'DocumentReference.content.attachment.contentType', sxpNormal);
  indexes.add('DocumentReference', 'created', 'Document creation time', sptDATE, [], 'DocumentReference.created', sxpNormal);
  indexes.add('DocumentReference', 'custodian', 'Organization which maintains the document', sptREFERENCE, ['Organization'], 'DocumentReference.custodian', sxpNormal);
  indexes.add('DocumentReference', 'date', 'When this document reference was created', sptDATE, [], 'DocumentReference.date', sxpNormal);
  indexes.add('DocumentReference', 'description', 'Human-readable description (title)', sptSTRING, [], 'DocumentReference.description', sxpNormal);
  indexes.add('DocumentReference', 'encounter', 'Context of the document  content', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('DocumentReference', 'event', 'Main clinical acts documented', sptTOKEN, [], 'DocumentReference.context.event', sxpNormal);
  indexes.add('DocumentReference', 'facility', 'Kind of facility where patient was seen', sptTOKEN, [], 'DocumentReference.context.facilityType', sxpNormal);
  indexes.add('DocumentReference', 'format', 'Format/content rules for the document', sptTOKEN, [], 'DocumentReference.content.format', sxpNormal);
  indexes.add('DocumentReference', 'identifier', 'Master Version Specific Identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('DocumentReference', 'language', 'Human language of the content (BCP-47)', sptTOKEN, [], 'DocumentReference.content.attachment.language', sxpNormal);
  indexes.add('DocumentReference', 'location', 'Uri where the data can be found', sptURI, [], 'DocumentReference.content.attachment.url', sxpNormal);
  indexes.add('DocumentReference', 'patient', 'Who/what is the subject of the document', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('DocumentReference', 'period', 'Time of service that is being documented', sptDATE, [], 'DocumentReference.context.period', sxpNormal);
  indexes.add('DocumentReference', 'related-id', 'Identifier of related objects or events', sptTOKEN, [], 'DocumentReference.context.related.identifier', sxpNormal);
  indexes.add('DocumentReference', 'related-ref', 'Related Resource', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'DocumentReference.context.related.ref', sxpNormal);
  indexes.add('DocumentReference', 'relatesto', 'Target of the relationship', sptREFERENCE, ['DocumentReference'], 'DocumentReference.relatesTo.target', sxpNormal);
  indexes.add('DocumentReference', 'relation', 'replaces | transforms | signs | appends', sptTOKEN, [], 'DocumentReference.relatesTo.code', sxpNormal);
  indexes.add('DocumentReference', 'relationship', 'Combination of relation and relatesTo', sptCOMPOSITE, [], 'DocumentReference.relatesTo', sxpNormal);
  indexes.add('DocumentReference', 'securitylabel', 'Document security-tags', sptTOKEN, [], 'DocumentReference.securityLabel', sxpNormal);
  indexes.add('DocumentReference', 'setting', 'Additional details about where the content was created (e.g. clinical specialty)', sptTOKEN, [], 'DocumentReference.context.practiceSetting', sxpNormal);
  indexes.add('DocumentReference', 'status', 'current | superseded | entered-in-error', sptTOKEN, [], 'DocumentReference.status', sxpNormal);
  indexes.add('DocumentReference', 'subject', 'Who/what is the subject of the document', sptREFERENCE, ['Practitioner', 'Group', 'Device', 'Patient'], 'DocumentReference.subject', sxpNormal);
  indexes.add('DocumentReference', 'type', 'Kind of document (LOINC if possible)', sptTOKEN, [], 'DocumentManifest.type | DocumentReference.type | Encounter.type | AllergyIntolerance.type | EpisodeOfCare.type | Composition.type', sxpNormal);
  compartments.register('Device', 'DocumentReference', ['subject', 'agent']);
  compartments.register('Encounter', 'DocumentReference', ['encounter']);
  compartments.register('Patient', 'DocumentReference', ['subject']);
  compartments.register('Practitioner', 'DocumentReference', ['subject', 'agent', 'authenticator']);
  compartments.register('RelatedPerson', 'DocumentReference', ['agent']);
end;
{$ENDIF}

{$IFDEF FHIR_ELIGIBILITYREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForEligibilityRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('EligibilityRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EligibilityRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('EligibilityRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('EligibilityRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('EligibilityRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('EligibilityRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('EligibilityRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('EligibilityRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('EligibilityRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EligibilityRequest', 'created', 'The creation date for the EOB', sptDATE, [], 'EligibilityRequest.created', sxpNormal);
  indexes.add('EligibilityRequest', 'enterer', 'The party who is responsible for the request', sptREFERENCE, ['Practitioner', 'PractitionerRole'], 'EligibilityRequest.enterer', sxpNormal);
  indexes.add('EligibilityRequest', 'facility', 'Facility responsible for the goods and services', sptREFERENCE, ['Location'], 'EligibilityRequest.facility', sxpNormal);
  indexes.add('EligibilityRequest', 'identifier', 'The business identifier of the Eligibility', sptTOKEN, [], 'EligibilityRequest.identifier', sxpNormal);
  indexes.add('EligibilityRequest', 'patient', 'The reference to the patient', sptREFERENCE, ['Patient'], 'EligibilityRequest.patient', sxpNormal);
  indexes.add('EligibilityRequest', 'provider', 'The reference to the provider', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'EligibilityRequest.provider', sxpNormal);
  indexes.add('EligibilityRequest', 'status', 'The status of the EligibilityRequest', sptTOKEN, [], 'EligibilityRequest.status', sxpNormal);
  compartments.register('Patient', 'EligibilityRequest', ['patient']);
  compartments.register('Practitioner', 'EligibilityRequest', ['enterer', 'provider']);
end;
{$ENDIF}

{$IFDEF FHIR_ELIGIBILITYRESPONSE}
procedure TFHIRIndexBuilderR4.buildIndexesForEligibilityResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('EligibilityResponse', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EligibilityResponse', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('EligibilityResponse', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('EligibilityResponse', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('EligibilityResponse', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('EligibilityResponse', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('EligibilityResponse', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('EligibilityResponse', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('EligibilityResponse', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EligibilityResponse', 'created', 'The creation date', sptDATE, [], 'EligibilityResponse.created', sxpNormal);
  indexes.add('EligibilityResponse', 'disposition', 'The contents of the disposition message', sptSTRING, [], 'EligibilityResponse.disposition', sxpNormal);
  indexes.add('EligibilityResponse', 'identifier', 'The business identifier', sptTOKEN, [], 'EligibilityResponse.identifier', sxpNormal);
  indexes.add('EligibilityResponse', 'insurer', 'The organization which generated this resource', sptREFERENCE, ['Organization'], 'EligibilityResponse.insurer', sxpNormal);
  indexes.add('EligibilityResponse', 'outcome', 'The processing outcome', sptTOKEN, [], 'EligibilityResponse.outcome', sxpNormal);
  indexes.add('EligibilityResponse', 'request', 'The EligibilityRequest reference', sptREFERENCE, ['EligibilityRequest'], 'EligibilityResponse.request', sxpNormal);
  indexes.add('EligibilityResponse', 'request-provider', 'The EligibilityRequest provider', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'EligibilityResponse.requestProvider', sxpNormal);
  indexes.add('EligibilityResponse', 'status', 'The EligibilityRequest status', sptTOKEN, [], 'EligibilityResponse.status', sxpNormal);
  compartments.register('Practitioner', 'EligibilityResponse', ['request-provider']);
end;
{$ENDIF}

{$IFDEF FHIR_ENCOUNTER}
procedure TFHIRIndexBuilderR4.buildIndexesForEncounter(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Encounter', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Encounter', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Encounter', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Encounter', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Encounter', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Encounter', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Encounter', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Encounter', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Encounter', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Encounter', 'account', 'The set of accounts that may be used for billing for this Encounter', sptREFERENCE, ['Account'], 'Encounter.account', sxpNormal);
  indexes.add('Encounter', 'appointment', 'The appointment that scheduled this encounter', sptREFERENCE, ['Appointment'], 'Encounter.appointment', sxpNormal);
  indexes.add('Encounter', 'based-on', 'The ServiceRequest that initiated this encounter', sptREFERENCE, ['ServiceRequest'], 'Encounter.basedOn', sxpNormal);
  indexes.add('Encounter', 'class', 'Classification of patient encounter', sptTOKEN, [], 'Encounter.class', sxpNormal);
  indexes.add('Encounter', 'date', 'A date within the period the Encounter lasted', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('Encounter', 'diagnosis', 'Reason the encounter takes place (resource)', sptREFERENCE, ['Condition', 'Procedure'], 'Encounter.diagnosis.condition', sxpNormal);
  indexes.add('Encounter', 'episodeofcare', 'Episode(s) of care that this encounter should be recorded against', sptREFERENCE, ['EpisodeOfCare'], 'Encounter.episodeOfCare', sxpNormal);
  indexes.add('Encounter', 'identifier', 'Identifier(s) by which this encounter is known', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Encounter', 'length', 'Length of encounter in days', sptQUANTITY, [], 'Encounter.length', sxpNormal);
  indexes.add('Encounter', 'location', 'Location the encounter takes place', sptREFERENCE, ['Location'], 'Encounter.location.location', sxpNormal);
  indexes.add('Encounter', 'location-period', 'Time period during which the patient was present at the location', sptDATE, [], 'Encounter.location.period', sxpNormal);
  indexes.add('Encounter', 'part-of', 'Another Encounter this encounter is part of', sptREFERENCE, ['Encounter'], 'Encounter.partOf', sxpNormal);
  indexes.add('Encounter', 'participant', 'Persons involved in the encounter other than the patient', sptREFERENCE, ['Practitioner', 'RelatedPerson'], 'Encounter.participant.individual', sxpNormal);
  indexes.add('Encounter', 'participant-type', 'Role of participant in encounter', sptTOKEN, [], 'Encounter.participant.type', sxpNormal);
  indexes.add('Encounter', 'patient', 'The patient or group present at the encounter', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Encounter', 'practitioner', 'Persons involved in the encounter other than the patient', sptREFERENCE, ['Practitioner'], 'Encounter.participant.individual', sxpNormal);
  indexes.add('Encounter', 'reason', 'Reason the encounter takes place (code)', sptTOKEN, [], 'Encounter.reason', sxpNormal);
  indexes.add('Encounter', 'service-provider', 'The organization (facility) responsible for this encounter', sptREFERENCE, ['Organization'], 'Encounter.serviceProvider', sxpNormal);
  indexes.add('Encounter', 'special-arrangement', 'Wheelchair, translator, stretcher, etc.', sptTOKEN, [], 'Encounter.hospitalization.specialArrangement', sxpNormal);
  indexes.add('Encounter', 'status', 'planned | arrived | triaged | in-progress | onleave | finished | cancelled +', sptTOKEN, [], 'Encounter.status', sxpNormal);
  indexes.add('Encounter', 'subject', 'The patient or group present at the encounter', sptREFERENCE, ['Group', 'Patient'], 'Encounter.subject', sxpNormal);
  indexes.add('Encounter', 'type', 'Specific type of encounter', sptTOKEN, [], 'DocumentManifest.type | DocumentReference.type | Encounter.type | AllergyIntolerance.type | EpisodeOfCare.type | Composition.type', sxpNormal);
  compartments.register('Encounter', 'Encounter', ['{def}']);
  compartments.register('Patient', 'Encounter', ['patient']);
  compartments.register('Practitioner', 'Encounter', ['practitioner', 'participant']);
  compartments.register('RelatedPerson', 'Encounter', ['participant']);
end;
{$ENDIF}

{$IFDEF FHIR_ENDPOINT}
procedure TFHIRIndexBuilderR4.buildIndexesForEndpoint(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Endpoint', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Endpoint', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Endpoint', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Endpoint', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Endpoint', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Endpoint', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Endpoint', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Endpoint', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Endpoint', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Endpoint', 'connection-type', 'Protocol/Profile/Standard to be used with this endpoint connection', sptTOKEN, [], 'Endpoint.connectionType', sxpNormal);
  indexes.add('Endpoint', 'identifier', 'Identifies this endpoint across multiple systems', sptTOKEN, [], 'Endpoint.identifier', sxpNormal);
  indexes.add('Endpoint', 'name', 'A name that this endpoint can be identified by', sptSTRING, [], 'Endpoint.name', sxpNormal);
  indexes.add('Endpoint', 'organization', 'The organization that is managing the endpoint', sptREFERENCE, ['Organization'], 'Endpoint.managingOrganization', sxpNormal);
  indexes.add('Endpoint', 'payload-type', 'The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)', sptTOKEN, [], 'Endpoint.payloadType', sxpNormal);
  indexes.add('Endpoint', 'status', 'The current status of the Endpoint (usually expected to be active)', sptTOKEN, [], 'Endpoint.status', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_ENROLLMENTREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForEnrollmentRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('EnrollmentRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EnrollmentRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('EnrollmentRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('EnrollmentRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('EnrollmentRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('EnrollmentRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('EnrollmentRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('EnrollmentRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('EnrollmentRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EnrollmentRequest', 'identifier', 'The business identifier of the Enrollment', sptTOKEN, [], 'EnrollmentRequest.identifier', sxpNormal);
  indexes.add('EnrollmentRequest', 'patient', 'The party to be enrolled', sptREFERENCE, ['Patient'], 'EnrollmentRequest.candidate', sxpNormal);
  indexes.add('EnrollmentRequest', 'status', 'The status fo the enrollment', sptTOKEN, [], 'EnrollmentRequest.status', sxpNormal);
  indexes.add('EnrollmentRequest', 'subject', 'The party to be enrolled', sptREFERENCE, ['Patient'], 'EnrollmentRequest.candidate', sxpNormal);
  compartments.register('Patient', 'EnrollmentRequest', ['subject']);
end;
{$ENDIF}

{$IFDEF FHIR_ENROLLMENTRESPONSE}
procedure TFHIRIndexBuilderR4.buildIndexesForEnrollmentResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('EnrollmentResponse', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EnrollmentResponse', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('EnrollmentResponse', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('EnrollmentResponse', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('EnrollmentResponse', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('EnrollmentResponse', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('EnrollmentResponse', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('EnrollmentResponse', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('EnrollmentResponse', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EnrollmentResponse', 'identifier', 'The business identifier of the EnrollmentResponse', sptTOKEN, [], 'EnrollmentResponse.identifier', sxpNormal);
  indexes.add('EnrollmentResponse', 'request', 'The reference to the claim', sptREFERENCE, ['EnrollmentRequest'], 'EnrollmentResponse.request', sxpNormal);
  indexes.add('EnrollmentResponse', 'status', 'The status of the enrollment response', sptTOKEN, [], 'EnrollmentResponse.status', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_ENTRYDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForEntryDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('EntryDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EntryDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('EntryDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('EntryDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('EntryDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('EntryDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('EntryDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('EntryDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('EntryDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_EPISODEOFCARE}
procedure TFHIRIndexBuilderR4.buildIndexesForEpisodeOfCare(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('EpisodeOfCare', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EpisodeOfCare', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('EpisodeOfCare', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('EpisodeOfCare', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('EpisodeOfCare', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('EpisodeOfCare', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('EpisodeOfCare', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('EpisodeOfCare', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('EpisodeOfCare', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EpisodeOfCare', 'care-manager', 'Care manager/care coordinator for the patient', sptREFERENCE, ['Practitioner'], 'EpisodeOfCare.careManager', sxpNormal);
  indexes.add('EpisodeOfCare', 'condition', 'Conditions/problems/diagnoses this episode of care is for', sptREFERENCE, ['Condition'], 'EpisodeOfCare.diagnosis.condition', sxpNormal);
  indexes.add('EpisodeOfCare', 'date', 'The provided date search value falls within the episode of care''s period', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('EpisodeOfCare', 'identifier', 'Business Identifier(s) relevant for this EpisodeOfCare', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('EpisodeOfCare', 'incomingreferral', 'Incoming Referral Request', sptREFERENCE, ['ServiceRequest'], 'EpisodeOfCare.referralRequest', sxpNormal);
  indexes.add('EpisodeOfCare', 'organization', 'The organization that has assumed the specific responsibilities of this EpisodeOfCare', sptREFERENCE, ['Organization'], 'EpisodeOfCare.managingOrganization', sxpNormal);
  indexes.add('EpisodeOfCare', 'patient', 'The patient who is the focus of this episode of care', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('EpisodeOfCare', 'status', 'The current status of the Episode of Care as provided (does not check the status history collection)', sptTOKEN, [], 'EpisodeOfCare.status', sxpNormal);
  indexes.add('EpisodeOfCare', 'type', 'Type/class  - e.g. specialist referral, disease management', sptTOKEN, [], 'DocumentManifest.type | DocumentReference.type | Encounter.type | AllergyIntolerance.type | EpisodeOfCare.type | Composition.type', sxpNormal);
  compartments.register('Patient', 'EpisodeOfCare', ['patient']);
  compartments.register('Practitioner', 'EpisodeOfCare', ['care-manager']);
end;
{$ENDIF}

{$IFDEF FHIR_EVENTDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForEventDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('EventDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EventDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('EventDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('EventDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('EventDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('EventDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('EventDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('EventDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('EventDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('EventDefinition', 'composed-of', 'What resource is being referenced', sptREFERENCE, [], 'EventDefinition.relatedArtifact.where(type=''composed-of'').resource', sxpNormal);
  indexes.add('EventDefinition', 'date', 'The event definition publication date', sptDATE, [], 'EventDefinition.date', sxpNormal);
  indexes.add('EventDefinition', 'depends-on', 'What resource is being referenced', sptREFERENCE, [], 'EventDefinition.relatedArtifact.where(type=''depends-on'').resource', sxpNormal);
  indexes.add('EventDefinition', 'derived-from', 'What resource is being referenced', sptREFERENCE, [], 'EventDefinition.relatedArtifact.where(type=''derived-from'').resource', sxpNormal);
  indexes.add('EventDefinition', 'description', 'The description of the event definition', sptSTRING, [], 'EventDefinition.description', sxpNormal);
  indexes.add('EventDefinition', 'effective', 'The time during which the event definition is intended to be in use', sptDATE, [], 'EventDefinition.effectivePeriod', sxpNormal);
  indexes.add('EventDefinition', 'identifier', 'External identifier for the event definition', sptTOKEN, [], 'EventDefinition.identifier', sxpNormal);
  indexes.add('EventDefinition', 'jurisdiction', 'Intended jurisdiction for the event definition', sptTOKEN, [], 'EventDefinition.jurisdiction', sxpNormal);
  indexes.add('EventDefinition', 'name', 'Computationally friendly name of the event definition', sptSTRING, [], 'EventDefinition.name', sxpNormal);
  indexes.add('EventDefinition', 'predecessor', 'What resource is being referenced', sptREFERENCE, [], 'EventDefinition.relatedArtifact.where(type=''predecessor'').resource', sxpNormal);
  indexes.add('EventDefinition', 'publisher', 'Name of the publisher of the event definition', sptSTRING, [], 'EventDefinition.publisher', sxpNormal);
  indexes.add('EventDefinition', 'status', 'The current status of the event definition', sptTOKEN, [], 'EventDefinition.status', sxpNormal);
  indexes.add('EventDefinition', 'successor', 'What resource is being referenced', sptREFERENCE, [], 'EventDefinition.relatedArtifact.where(type=''successor'').resource', sxpNormal);
  indexes.add('EventDefinition', 'title', 'The human-friendly name of the event definition', sptSTRING, [], 'EventDefinition.title', sxpNormal);
  indexes.add('EventDefinition', 'topic', 'Topics associated with the module', sptTOKEN, [], 'EventDefinition.topic', sxpNormal);
  indexes.add('EventDefinition', 'url', 'The uri that identifies the event definition', sptURI, [], 'EventDefinition.url', sxpNormal);
  indexes.add('EventDefinition', 'version', 'The business version of the event definition', sptTOKEN, [], 'EventDefinition.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_EXAMPLESCENARIO}
procedure TFHIRIndexBuilderR4.buildIndexesForExampleScenario(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ExampleScenario', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ExampleScenario', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ExampleScenario', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ExampleScenario', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ExampleScenario', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ExampleScenario', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ExampleScenario', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ExampleScenario', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ExampleScenario', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ExampleScenario', 'date', 'The example scenario publication date', sptDATE, [], 'ExampleScenario.date', sxpNormal);
  indexes.add('ExampleScenario', 'identifier', 'External identifier for the example scenario', sptTOKEN, [], 'ExampleScenario.identifier', sxpNormal);
  indexes.add('ExampleScenario', 'jurisdiction', 'Intended jurisdiction for the example scenario', sptTOKEN, [], 'ExampleScenario.jurisdiction', sxpNormal);
  indexes.add('ExampleScenario', 'name', 'Computationally friendly name of the example scenario', sptSTRING, [], 'ExampleScenario.name', sxpNormal);
  indexes.add('ExampleScenario', 'publisher', 'Name of the publisher of the example scenario', sptSTRING, [], 'ExampleScenario.publisher', sxpNormal);
  indexes.add('ExampleScenario', 'status', 'The current status of the example scenario', sptTOKEN, [], 'ExampleScenario.status', sxpNormal);
  indexes.add('ExampleScenario', 'url', 'The uri that identifies the example scenario', sptURI, [], 'ExampleScenario.url', sxpNormal);
  indexes.add('ExampleScenario', 'version', 'The business version of the example scenario', sptTOKEN, [], 'ExampleScenario.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_EXPANSIONPROFILE}
procedure TFHIRIndexBuilderR4.buildIndexesForExpansionProfile(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ExpansionProfile', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ExpansionProfile', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ExpansionProfile', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ExpansionProfile', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ExpansionProfile', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ExpansionProfile', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ExpansionProfile', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ExpansionProfile', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ExpansionProfile', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ExpansionProfile', 'date', 'The expansion profile publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('ExpansionProfile', 'description', 'The description of the expansion profile', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('ExpansionProfile', 'identifier', 'External identifier for the expansion profile', sptTOKEN, [], 'MessageDefinition.identifier | ExpansionProfile.identifier | StructureDefinition.identifier | ConceptMap.identifier | ValueSet.identifier | CodeSystem.identifier | StructureMap.identifier', sxpNormal);
  indexes.add('ExpansionProfile', 'jurisdiction', 'Intended jurisdiction for the expansion profile', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('ExpansionProfile', 'name', 'Computationally friendly name of the expansion profile', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('ExpansionProfile', 'publisher', 'Name of the publisher of the expansion profile', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('ExpansionProfile', 'status', 'The current status of the expansion profile', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('ExpansionProfile', 'url', 'The uri that identifies the expansion profile', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('ExpansionProfile', 'version', 'The business version of the expansion profile', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_EXPLANATIONOFBENEFIT}
procedure TFHIRIndexBuilderR4.buildIndexesForExplanationOfBenefit(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ExplanationOfBenefit', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ExplanationOfBenefit', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'care-team', 'Member of the CareTeam', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'ExplanationOfBenefit.careTeam.provider', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'claim', 'The reference to the claim', sptREFERENCE, ['Claim'], 'ExplanationOfBenefit.claim', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'coverage', 'The plan under which the claim was adjudicated', sptREFERENCE, ['Coverage'], 'ExplanationOfBenefit.insurance.coverage', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'created', 'The creation date for the EOB', sptDATE, [], 'ExplanationOfBenefit.created', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'disposition', 'The contents of the disposition message', sptSTRING, [], 'ExplanationOfBenefit.disposition', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'encounter', 'Encounters associated with a billed line item', sptREFERENCE, ['Encounter'], 'ExplanationOfBenefit.item.encounter', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'enterer', 'The party responsible for the entry of the Claim', sptREFERENCE, ['Practitioner', 'PractitionerRole'], 'ExplanationOfBenefit.enterer', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'facility', 'Facility responsible for the goods and services', sptREFERENCE, ['Location'], 'ExplanationOfBenefit.facility', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'identifier', 'The business identifier of the Explanation of Benefit', sptTOKEN, [], 'ExplanationOfBenefit.identifier', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'patient', 'The reference to the patient', sptREFERENCE, ['Patient'], 'ExplanationOfBenefit.patient', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'payee', 'The party receiving any payment for the Claim', sptREFERENCE, ['Practitioner', 'Organization', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'ExplanationOfBenefit.payee.party', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'provider', 'The reference to the provider', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'ExplanationOfBenefit.provider', sxpNormal);
  indexes.add('ExplanationOfBenefit', 'status', 'Status of the instance', sptTOKEN, [], 'ExplanationOfBenefit.status', sxpNormal);
  compartments.register('Encounter', 'ExplanationOfBenefit', ['encounter']);
  compartments.register('Patient', 'ExplanationOfBenefit', ['patient', 'payee']);
  compartments.register('Practitioner', 'ExplanationOfBenefit', ['enterer', 'provider', 'payee', 'care-team']);
  compartments.register('RelatedPerson', 'ExplanationOfBenefit', ['payee']);
end;
{$ENDIF}

{$IFDEF FHIR_FAMILYMEMBERHISTORY}
procedure TFHIRIndexBuilderR4.buildIndexesForFamilyMemberHistory(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('FamilyMemberHistory', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('FamilyMemberHistory', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('FamilyMemberHistory', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('FamilyMemberHistory', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('FamilyMemberHistory', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('FamilyMemberHistory', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('FamilyMemberHistory', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('FamilyMemberHistory', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('FamilyMemberHistory', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('FamilyMemberHistory', 'code', 'A search by a condition code', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('FamilyMemberHistory', 'date', 'When history was recorded or last updated', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('FamilyMemberHistory', 'gender', 'A search by a gender code of a family member', sptTOKEN, [], 'FamilyMemberHistory.gender', sxpNormal);
  indexes.add('FamilyMemberHistory', 'identifier', 'A search by a record identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('FamilyMemberHistory', 'instantiates', 'Instantiates protocol or definition', sptURI, [], 'FamilyMemberHistory.instantiates', sxpNormal);
  indexes.add('FamilyMemberHistory', 'patient', 'The identity of a subject to list family member history items for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('FamilyMemberHistory', 'relationship', 'A search by a relationship type', sptTOKEN, [], 'FamilyMemberHistory.relationship', sxpNormal);
  indexes.add('FamilyMemberHistory', 'status', 'partial | completed | entered-in-error | health-unknown', sptTOKEN, [], 'FamilyMemberHistory.status', sxpNormal);
  compartments.register('Patient', 'FamilyMemberHistory', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_FLAG}
procedure TFHIRIndexBuilderR4.buildIndexesForFlag(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Flag', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Flag', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Flag', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Flag', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Flag', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Flag', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Flag', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Flag', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Flag', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Flag', 'author', 'Flag creator', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient'], 'Flag.author', sxpNormal);
  indexes.add('Flag', 'date', 'Time period when flag is active', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('Flag', 'encounter', 'Alert relevant during encounter', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('Flag', 'identifier', 'Business identifier', sptTOKEN, [], 'Flag.identifier', sxpNormal);
  indexes.add('Flag', 'patient', 'The identity of a subject to list flags for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Flag', 'subject', 'The identity of a subject to list flags for', sptREFERENCE, ['Practitioner', 'Group', 'Organization', 'Medication', 'Patient', 'PlanDefinition', 'Procedure', 'Location'], 'Flag.subject', sxpNormal);
  compartments.register('Device', 'Flag', ['author']);
  compartments.register('Patient', 'Flag', ['patient']);
  compartments.register('Practitioner', 'Flag', ['author']);
end;
{$ENDIF}

{$IFDEF FHIR_GOAL}
procedure TFHIRIndexBuilderR4.buildIndexesForGoal(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Goal', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Goal', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Goal', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Goal', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Goal', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Goal', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Goal', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Goal', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Goal', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Goal', 'category', 'E.g. Treatment, dietary, behavioral, etc.', sptTOKEN, [], 'Goal.category', sxpNormal);
  indexes.add('Goal', 'identifier', 'External Ids for this goal', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Goal', 'patient', 'Who this goal is intended for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Goal', 'start-date', 'When goal pursuit begins', sptDATE, [], 'Goal.start.as(date)', sxpNormal);
  indexes.add('Goal', 'status', 'proposed | accepted | planned | in-progress | on-target | ahead-of-target | behind-target | sustaining | achieved | on-hold | cancelled | entered-in-error | rejected', sptTOKEN, [], 'Goal.status', sxpNormal);
  indexes.add('Goal', 'subject', 'Who this goal is intended for', sptREFERENCE, ['Group', 'Organization', 'Patient'], 'Goal.subject', sxpNormal);
  indexes.add('Goal', 'target-date', 'Reach goal on or before', sptDATE, [], 'Goal.target.due.as(date)', sxpNormal);
  compartments.register('Patient', 'Goal', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_GRAPHDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForGraphDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('GraphDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('GraphDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('GraphDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('GraphDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('GraphDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('GraphDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('GraphDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('GraphDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('GraphDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('GraphDefinition', 'date', 'The graph definition publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('GraphDefinition', 'description', 'The description of the graph definition', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('GraphDefinition', 'jurisdiction', 'Intended jurisdiction for the graph definition', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('GraphDefinition', 'name', 'Computationally friendly name of the graph definition', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('GraphDefinition', 'publisher', 'Name of the publisher of the graph definition', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('GraphDefinition', 'start', 'Type of resource at which the graph starts', sptTOKEN, [], 'GraphDefinition.start', sxpNormal);
  indexes.add('GraphDefinition', 'status', 'The current status of the graph definition', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('GraphDefinition', 'url', 'The uri that identifies the graph definition', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('GraphDefinition', 'version', 'The business version of the graph definition', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_GROUP}
procedure TFHIRIndexBuilderR4.buildIndexesForGroup(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Group', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Group', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Group', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Group', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Group', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Group', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Group', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Group', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Group', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Group', 'actual', 'Descriptive or actual', sptTOKEN, [], 'Group.actual', sxpNormal);
  indexes.add('Group', 'characteristic', 'Kind of characteristic', sptTOKEN, [], 'Group.characteristic.code', sxpNormal);
  indexes.add('Group', 'characteristic-value', 'A composite of both characteristic and value', sptCOMPOSITE, [], 'Group.characteristic', sxpNormal);
  indexes.add('Group', 'code', 'The kind of resources contained', sptTOKEN, [], 'Group.code', sxpNormal);
  indexes.add('Group', 'exclude', 'Group includes or excludes', sptTOKEN, [], 'Group.characteristic.exclude', sxpNormal);
  indexes.add('Group', 'identifier', 'Unique id', sptTOKEN, [], 'Group.identifier', sxpNormal);
  indexes.add('Group', 'member', 'Reference to the group member', sptREFERENCE, ['Practitioner', 'Device', 'Medication', 'Patient', 'Substance', 'PractitionerRole'], 'Group.member.entity', sxpNormal);
  indexes.add('Group', 'type', 'The type of resources the group contains', sptTOKEN, [], 'Group.type', sxpNormal);
  indexes.add('Group', 'value', 'Value held by characteristic', sptTOKEN, [], 'Group.characteristic.value', sxpNormal);
  compartments.register('Device', 'Group', ['member']);
  compartments.register('Patient', 'Group', ['member']);
  compartments.register('Practitioner', 'Group', ['member']);
end;
{$ENDIF}

{$IFDEF FHIR_GUIDANCERESPONSE}
procedure TFHIRIndexBuilderR4.buildIndexesForGuidanceResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('GuidanceResponse', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('GuidanceResponse', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('GuidanceResponse', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('GuidanceResponse', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('GuidanceResponse', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('GuidanceResponse', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('GuidanceResponse', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('GuidanceResponse', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('GuidanceResponse', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('GuidanceResponse', 'identifier', 'The identifier of the guidance response', sptTOKEN, [], 'GuidanceResponse.identifier', sxpNormal);
  indexes.add('GuidanceResponse', 'patient', 'The identity of a patient to search for guidance response results', sptREFERENCE, ['Patient'], 'GuidanceResponse.subject', sxpNormal);
  indexes.add('GuidanceResponse', 'request', 'The identifier of the request associated with the response', sptTOKEN, [], 'GuidanceResponse.requestId', sxpNormal);
  indexes.add('GuidanceResponse', 'subject', 'The subject that the guidance response is about', sptREFERENCE, ['Group', 'Patient'], 'GuidanceResponse.subject', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_HEALTHCARESERVICE}
procedure TFHIRIndexBuilderR4.buildIndexesForHealthcareService(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('HealthcareService', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('HealthcareService', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('HealthcareService', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('HealthcareService', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('HealthcareService', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('HealthcareService', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('HealthcareService', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('HealthcareService', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('HealthcareService', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('HealthcareService', 'active', 'The Healthcare Service is currently marked as active', sptTOKEN, [], 'HealthcareService.active', sxpNormal);
  indexes.add('HealthcareService', 'category', 'Service Category of the Healthcare Service', sptTOKEN, [], 'HealthcareService.category', sxpNormal);
  indexes.add('HealthcareService', 'characteristic', 'One of the HealthcareService''s characteristics', sptTOKEN, [], 'HealthcareService.characteristic', sxpNormal);
  indexes.add('HealthcareService', 'endpoint', 'Technical endpoints providing access to services operated for the location', sptREFERENCE, ['Endpoint'], 'HealthcareService.endpoint', sxpNormal);
  indexes.add('HealthcareService', 'identifier', 'External identifiers for this item', sptTOKEN, [], 'HealthcareService.identifier', sxpNormal);
  indexes.add('HealthcareService', 'location', 'The location of the Healthcare Service', sptREFERENCE, ['Location'], 'HealthcareService.location', sxpNormal);
  indexes.add('HealthcareService', 'name', 'A portion of the Healthcare service name', sptSTRING, [], 'HealthcareService.name', sxpNormal);
  indexes.add('HealthcareService', 'organization', 'The organization that provides this Healthcare Service', sptREFERENCE, ['Organization'], 'HealthcareService.providedBy', sxpNormal);
  indexes.add('HealthcareService', 'programname', 'One of the Program Names serviced by this HealthcareService', sptSTRING, [], 'HealthcareService.programName', sxpNormal);
  indexes.add('HealthcareService', 'type', 'The type of service provided by this healthcare service', sptTOKEN, [], 'HealthcareService.type', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_IMAGINGSTUDY}
procedure TFHIRIndexBuilderR4.buildIndexesForImagingStudy(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ImagingStudy', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImagingStudy', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ImagingStudy', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ImagingStudy', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ImagingStudy', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ImagingStudy', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ImagingStudy', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ImagingStudy', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ImagingStudy', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImagingStudy', 'accession', 'The accession identifier for the study', sptTOKEN, [], 'ImagingStudy.identifier', sxpNormal);
  indexes.add('ImagingStudy', 'basedon', 'The order for the image', sptREFERENCE, ['Appointment', 'AppointmentResponse', 'CarePlan', 'Task', 'ServiceRequest'], 'ImagingStudy.basedOn', sxpNormal);
  indexes.add('ImagingStudy', 'bodysite', 'The body site studied', sptTOKEN, [], 'ImagingStudy.series.bodySite', sxpNormal);
  indexes.add('ImagingStudy', 'context', 'The context of the study', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'ImagingStudy.context', sxpNormal);
  indexes.add('ImagingStudy', 'dicom-class', 'The type of the instance', sptTOKEN, [], 'ImagingStudy.series.instance.sopClass', sxpNormal);
  indexes.add('ImagingStudy', 'endpoint', 'The endpoint for the study or series', sptREFERENCE, ['Endpoint'], 'ImagingStudy.endpoint | ImagingStudy.series.endpoint', sxpNormal);
  indexes.add('ImagingStudy', 'identifier', 'Other identifiers for the Study', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('ImagingStudy', 'inst-id', 'The instance unique identifier', sptTOKEN, [], 'ImagingStudy.series.instance.identifier', sxpNormal);
  indexes.add('ImagingStudy', 'modality', 'The modality of the series', sptTOKEN, [], 'ImagingStudy.series.modality', sxpNormal);
  indexes.add('ImagingStudy', 'patient', 'Who the study is about', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('ImagingStudy', 'performer', 'The person who performed the study', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'ImagingStudy.series.performer.actor', sxpNormal);
  indexes.add('ImagingStudy', 'reason', 'The reason for the study', sptTOKEN, [], 'ImagingStudy.reasonCode', sxpNormal);
  indexes.add('ImagingStudy', 'series', 'The identifier of the series of images', sptTOKEN, [], 'ImagingStudy.series.identifier', sxpNormal);
  indexes.add('ImagingStudy', 'started', 'When the study was started', sptDATE, [], 'ImagingStudy.started', sxpNormal);
  indexes.add('ImagingStudy', 'status', 'The status of the study', sptTOKEN, [], 'ImagingStudy.status', sxpNormal);
  indexes.add('ImagingStudy', 'study', 'The study identifier for the image', sptTOKEN, [], 'ImagingStudy.identifier', sxpNormal);
  indexes.add('ImagingStudy', 'subject', 'Who the study is about', sptREFERENCE, ['Group', 'Device', 'Patient'], 'ImagingStudy.subject', sxpNormal);
  compartments.register('Patient', 'ImagingStudy', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_IMMUNIZATION}
procedure TFHIRIndexBuilderR4.buildIndexesForImmunization(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Immunization', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Immunization', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Immunization', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Immunization', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Immunization', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Immunization', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Immunization', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Immunization', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Immunization', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Immunization', 'date', 'Vaccination  (non)-Administration Date', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('Immunization', 'identifier', 'Business identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Immunization', 'location', 'The service delivery location or facility in which the vaccine was / was to be administered', sptREFERENCE, ['Location'], 'Immunization.location', sxpNormal);
  indexes.add('Immunization', 'lot-number', 'Vaccine Lot Number', sptSTRING, [], 'Immunization.lotNumber', sxpNormal);
  indexes.add('Immunization', 'manufacturer', 'Vaccine Manufacturer', sptREFERENCE, ['Organization'], 'Immunization.manufacturer', sxpNormal);
  indexes.add('Immunization', 'patient', 'The patient for the vaccination record', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Immunization', 'performer', 'The practitioner or organization who played a role in the vaccination', sptREFERENCE, ['Practitioner', 'Organization'], 'Immunization.performer.actor', sxpNormal);
  indexes.add('Immunization', 'reason-code', 'Reason why the vaccine was administered', sptTOKEN, [], 'Immunization.reasonCode', sxpNormal);
  indexes.add('Immunization', 'reason-reference', 'Why immunization occurred', sptREFERENCE, ['Condition', 'Observation', 'DiagnosticReport'], 'Immunization.reasonReference', sxpNormal);
  indexes.add('Immunization', 'status', 'Immunization event status', sptTOKEN, [], 'Immunization.status', sxpNormal);
  indexes.add('Immunization', 'status-reason', 'Reason why the vaccine was not administered', sptTOKEN, [], 'Immunization.statusReason', sxpNormal);
  indexes.add('Immunization', 'vaccine-code', 'Vaccine Product Administered', sptTOKEN, [], 'Immunization.vaccineCode', sxpNormal);
  compartments.register('Patient', 'Immunization', ['patient']);
  compartments.register('Practitioner', 'Immunization', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_IMMUNIZATIONEVALUATION}
procedure TFHIRIndexBuilderR4.buildIndexesForImmunizationEvaluation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ImmunizationEvaluation', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ImmunizationEvaluation', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImmunizationEvaluation', 'date', 'Date the evaluation was generated', sptDATE, [], 'ImmunizationEvaluation.date', sxpNormal);
  indexes.add('ImmunizationEvaluation', 'dose-status', 'The status of the dose relative to published recommendations', sptTOKEN, [], 'ImmunizationEvaluation.doseStatus', sxpNormal);
  indexes.add('ImmunizationEvaluation', 'identifier', 'ID of the evaluation', sptTOKEN, [], 'ImmunizationEvaluation.identifier', sxpNormal);
  indexes.add('ImmunizationEvaluation', 'immunization-event', 'The vaccine administration event being evaluated', sptREFERENCE, ['Immunization'], 'ImmunizationEvaluation.immunizationEvent', sxpNormal);
  indexes.add('ImmunizationEvaluation', 'patient', 'The patient being evaluated', sptREFERENCE, ['Patient'], 'ImmunizationEvaluation.patient', sxpNormal);
  indexes.add('ImmunizationEvaluation', 'status', 'Immunization evaluation status', sptTOKEN, [], 'ImmunizationEvaluation.status', sxpNormal);
  indexes.add('ImmunizationEvaluation', 'target-disease', 'The vaccine preventable disease being evaluated against', sptTOKEN, [], 'ImmunizationEvaluation.targetDisease', sxpNormal);
  compartments.register('Patient', 'ImmunizationEvaluation', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}
procedure TFHIRIndexBuilderR4.buildIndexesForImmunizationRecommendation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ImmunizationRecommendation', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ImmunizationRecommendation', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'date', 'Date recommendation(s) created', sptDATE, [], 'ImmunizationRecommendation.date', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'dose-number', 'Recommended dose number within series', sptNUMBER, [], 'ImmunizationRecommendation.recommendation.doseNumber', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'dose-sequence', 'Recommended number of doses for immunity', sptNUMBER, [], 'ImmunizationRecommendation.recommendation.seriesDoses', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'identifier', 'Business identifier', sptTOKEN, [], 'ImmunizationRecommendation.identifier', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'information', 'Patient observations supporting recommendation', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'ImmunizationRecommendation.recommendation.supportingPatientInformation', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'patient', 'Who this profile is for', sptREFERENCE, ['Patient'], 'ImmunizationRecommendation.patient', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'status', 'Vaccine recommendation status', sptTOKEN, [], 'ImmunizationRecommendation.recommendation.forecastStatus', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'support', 'Past immunizations supporting recommendation', sptREFERENCE, ['Immunization', 'ImmunizationEvaluation'], 'ImmunizationRecommendation.recommendation.supportingImmunization', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'target-disease', 'Disease to be immunized against', sptTOKEN, [], 'ImmunizationRecommendation.recommendation.targetDisease', sxpNormal);
  indexes.add('ImmunizationRecommendation', 'vaccine-type', 'Vaccine  or vaccine group recommendation applies to', sptTOKEN, [], 'ImmunizationRecommendation.recommendation.vaccineCode', sxpNormal);
  compartments.register('Patient', 'ImmunizationRecommendation', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_IMPLEMENTATIONGUIDE}
procedure TFHIRIndexBuilderR4.buildIndexesForImplementationGuide(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ImplementationGuide', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImplementationGuide', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ImplementationGuide', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ImplementationGuide', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ImplementationGuide', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ImplementationGuide', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ImplementationGuide', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ImplementationGuide', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ImplementationGuide', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ImplementationGuide', 'date', 'The implementation guide publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('ImplementationGuide', 'depends-on', 'Identity of the IG that this depends on', sptREFERENCE, [], 'ImplementationGuide.dependsOn.uri', sxpNormal);
  indexes.add('ImplementationGuide', 'description', 'The description of the implementation guide', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('ImplementationGuide', 'experimental', 'For testing purposes, not real usage', sptTOKEN, [], 'ImplementationGuide.experimental', sxpNormal);
  indexes.add('ImplementationGuide', 'jurisdiction', 'Intended jurisdiction for the implementation guide', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('ImplementationGuide', 'name', 'Computationally friendly name of the implementation guide', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('ImplementationGuide', 'publisher', 'Name of the publisher of the implementation guide', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('ImplementationGuide', 'status', 'The current status of the implementation guide', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('ImplementationGuide', 'url', 'The uri that identifies the implementation guide', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('ImplementationGuide', 'version', 'The business version of the implementation guide', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_INVOICE}
procedure TFHIRIndexBuilderR4.buildIndexesForInvoice(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Invoice', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Invoice', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Invoice', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Invoice', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Invoice', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Invoice', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Invoice', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Invoice', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Invoice', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Invoice', 'account', 'Account that is being balanced', sptREFERENCE, ['Account'], 'Invoice.account', sxpNormal);
  indexes.add('Invoice', 'date', 'Invoice date / posting date', sptDATE, [], 'Invoice.date', sxpNormal);
  indexes.add('Invoice', 'identifier', 'Business Identifier for item', sptTOKEN, [], 'Invoice.identifier', sxpNormal);
  indexes.add('Invoice', 'issuer', 'Issuing Organization of Invoice', sptREFERENCE, ['Organization'], 'Invoice.issuer', sxpNormal);
  indexes.add('Invoice', 'participant', 'Individual who was involved', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'RelatedPerson'], 'Invoice.participant.actor', sxpNormal);
  indexes.add('Invoice', 'participant-role', 'Type of involevent in creation of this Invoice', sptTOKEN, [], 'Invoice.participant.role', sxpNormal);
  indexes.add('Invoice', 'patient', 'Recipient(s) of goods and services', sptREFERENCE, ['Patient'], 'Invoice.subject', sxpNormal);
  indexes.add('Invoice', 'recipient', 'Recipient of this invoice', sptREFERENCE, ['Organization', 'Patient', 'RelatedPerson'], 'Invoice.recipient', sxpNormal);
  indexes.add('Invoice', 'status', 'draft | issued | balanced | cancelled | entered-in-error', sptTOKEN, [], 'Invoice.status', sxpNormal);
  indexes.add('Invoice', 'subject', 'Recipient(s) of goods and services', sptREFERENCE, ['Group', 'Patient'], 'Invoice.subject', sxpNormal);
  indexes.add('Invoice', 'totalgross', 'Gross toal of this Invoice', sptQUANTITY, [], 'Invoice.totalGross', sxpNormal);
  indexes.add('Invoice', 'totalnet', 'Net total of this Invoice', sptQUANTITY, [], 'Invoice.totalNet', sxpNormal);
  indexes.add('Invoice', 'type', 'Type of Invoice', sptTOKEN, [], 'Invoice.type', sxpNormal);
  compartments.register('Device', 'Invoice', ['participant']);
  compartments.register('Patient', 'Invoice', ['subject', 'patient', 'recipient']);
  compartments.register('Practitioner', 'Invoice', ['participant']);
  compartments.register('RelatedPerson', 'Invoice', ['recipient']);
end;
{$ENDIF}

{$IFDEF FHIR_ITEMINSTANCE}
procedure TFHIRIndexBuilderR4.buildIndexesForItemInstance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ItemInstance', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ItemInstance', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ItemInstance', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ItemInstance', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ItemInstance', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ItemInstance', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ItemInstance', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ItemInstance', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ItemInstance', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ItemInstance', 'subject', 'The identifier of the patient who has devices assigned to', sptREFERENCE, ['Patient'], 'ItemInstance.subject', sxpNormal);
  compartments.register('Patient', 'ItemInstance', ['subject']);
end;
{$ENDIF}

{$IFDEF FHIR_LIBRARY}
procedure TFHIRIndexBuilderR4.buildIndexesForLibrary(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Library', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Library', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Library', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Library', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Library', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Library', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Library', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Library', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Library', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Library', 'composed-of', 'What resource is being referenced', sptREFERENCE, [], 'Library.relatedArtifact.where(type=''composed-of'').resource', sxpNormal);
  indexes.add('Library', 'date', 'The library publication date', sptDATE, [], 'Library.date', sxpNormal);
  indexes.add('Library', 'depends-on', 'What resource is being referenced', sptREFERENCE, [], 'Library.relatedArtifact.where(type=''depends-on'').resource', sxpNormal);
  indexes.add('Library', 'derived-from', 'What resource is being referenced', sptREFERENCE, [], 'Library.relatedArtifact.where(type=''derived-from'').resource', sxpNormal);
  indexes.add('Library', 'description', 'The description of the library', sptSTRING, [], 'Library.description', sxpNormal);
  indexes.add('Library', 'effective', 'The time during which the library is intended to be in use', sptDATE, [], 'Library.effectivePeriod', sxpNormal);
  indexes.add('Library', 'identifier', 'External identifier for the library', sptTOKEN, [], 'Library.identifier', sxpNormal);
  indexes.add('Library', 'jurisdiction', 'Intended jurisdiction for the library', sptTOKEN, [], 'Library.jurisdiction', sxpNormal);
  indexes.add('Library', 'name', 'Computationally friendly name of the library', sptSTRING, [], 'Library.name', sxpNormal);
  indexes.add('Library', 'predecessor', 'What resource is being referenced', sptREFERENCE, [], 'Library.relatedArtifact.where(type=''predecessor'').resource', sxpNormal);
  indexes.add('Library', 'publisher', 'Name of the publisher of the library', sptSTRING, [], 'Library.publisher', sxpNormal);
  indexes.add('Library', 'status', 'The current status of the library', sptTOKEN, [], 'Library.status', sxpNormal);
  indexes.add('Library', 'successor', 'What resource is being referenced', sptREFERENCE, [], 'Library.relatedArtifact.where(type=''successor'').resource', sxpNormal);
  indexes.add('Library', 'title', 'The human-friendly name of the library', sptSTRING, [], 'Library.title', sxpNormal);
  indexes.add('Library', 'topic', 'Topics associated with the module', sptTOKEN, [], 'Library.topic', sxpNormal);
  indexes.add('Library', 'type', 'The type of the library (e.g. logic-library, model-definition, asset-collection, module-definition)', sptTOKEN, [], 'Library.type', sxpNormal);
  indexes.add('Library', 'url', 'The uri that identifies the library', sptURI, [], 'Library.url', sxpNormal);
  indexes.add('Library', 'version', 'The business version of the library', sptTOKEN, [], 'Library.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_LINKAGE}
procedure TFHIRIndexBuilderR4.buildIndexesForLinkage(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Linkage', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Linkage', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Linkage', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Linkage', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Linkage', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Linkage', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Linkage', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Linkage', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Linkage', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Linkage', 'author', 'Author of the Linkage', sptREFERENCE, ['Practitioner', 'Organization'], 'Linkage.author', sxpNormal);
  indexes.add('Linkage', 'item', 'Matches on any item in the Linkage', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Linkage.item.resource', sxpNormal);
  indexes.add('Linkage', 'source', 'Matches on any item in the Linkage with a type of ''source''', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Linkage.item.resource', sxpNormal);
  compartments.register('Practitioner', 'Linkage', ['author']);
end;
{$ENDIF}

{$IFDEF FHIR_LIST}
procedure TFHIRIndexBuilderR4.buildIndexesForList(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('List', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('List', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('List', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('List', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('List', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('List', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('List', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('List', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('List', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('List', 'code', 'What the purpose of this list is', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('List', 'date', 'When the list was prepared', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('List', 'empty-reason', 'Why list is empty', sptTOKEN, [], 'List.emptyReason', sxpNormal);
  indexes.add('List', 'encounter', 'Context in which list created', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('List', 'identifier', 'Business identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('List', 'item', 'Actual entry', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'List.entry.item', sxpNormal);
  indexes.add('List', 'notes', 'The annotation  - text content', sptSTRING, [], 'List.note.text', sxpNormal);
  indexes.add('List', 'patient', 'If all resources have the same subject', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('List', 'source', 'Who and/or what defined the list contents (aka Author)', sptREFERENCE, ['Practitioner', 'Device', 'Patient', 'PractitionerRole'], 'List.source', sxpNormal);
  indexes.add('List', 'status', 'current | retired | entered-in-error', sptTOKEN, [], 'List.status', sxpNormal);
  indexes.add('List', 'subject', 'If all resources have the same subject', sptREFERENCE, ['Group', 'Device', 'Patient', 'Location'], 'List.subject', sxpNormal);
  indexes.add('List', 'title', 'Descriptive name for the list', sptSTRING, [], 'List.title', sxpNormal);
  compartments.register('Device', 'List', ['subject', 'source']);
  compartments.register('Patient', 'List', ['subject', 'source']);
  compartments.register('Practitioner', 'List', ['source']);
end;
{$ENDIF}

{$IFDEF FHIR_LOCATION}
procedure TFHIRIndexBuilderR4.buildIndexesForLocation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Location', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Location', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Location', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Location', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Location', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Location', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Location', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Location', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Location', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Location', 'address', 'A (part of the) address of the location', sptSTRING, [], 'Location.address', sxpNormal);
  indexes.add('Location', 'address-city', 'A city specified in an address', sptSTRING, [], 'Location.address.city', sxpNormal);
  indexes.add('Location', 'address-country', 'A country specified in an address', sptSTRING, [], 'Location.address.country', sxpNormal);
  indexes.add('Location', 'address-postalcode', 'A postal code specified in an address', sptSTRING, [], 'Location.address.postalCode', sxpNormal);
  indexes.add('Location', 'address-state', 'A state specified in an address', sptSTRING, [], 'Location.address.state', sxpNormal);
  indexes.add('Location', 'address-use', 'A use code specified in an address', sptTOKEN, [], 'Location.address.use', sxpNormal);
  indexes.add('Location', 'endpoint', 'Technical endpoints providing access to services operated for the location', sptREFERENCE, ['Endpoint'], 'Location.endpoint', sxpNormal);
  indexes.add('Location', 'identifier', 'An identifier for the location', sptTOKEN, [], 'Location.identifier', sxpNormal);
  indexes.add('Location', 'name', 'A portion of the location''s name or alias', sptSTRING, [], 'Location.name | Location.alias', sxpNormal);
  indexes.add('Location', 'near', 'The coordinates expressed as [latitude]:[longitude] (using the WGS84 datum, see notes) to find locations near to (servers may search using a square rather than a circle for efficiency)  Requires the near-distance parameter to be provided also', sptTOKEN, [], 'Location.position', sxpNearby);
  indexes.add('Location', 'near-distance', 'A distance quantity to limit the near search to locations within a specific distance  Requires the near parameter to also be included', sptQUANTITY, [], 'Location.position', sxpDistance);
  indexes.add('Location', 'operational-status', 'Searches for locations (typically bed/room) that have an operational status (e.g. contaminated, housekeeping)', sptTOKEN, [], 'Location.operationalStatus', sxpNormal);
  indexes.add('Location', 'organization', 'Searches for locations that are managed by the provided organization', sptREFERENCE, ['Organization'], 'Location.managingOrganization', sxpNormal);
  indexes.add('Location', 'partof', 'A location of which this location is a part', sptREFERENCE, ['Location'], 'Location.partOf', sxpNormal);
  indexes.add('Location', 'status', 'Searches for locations with a specific kind of status', sptTOKEN, [], 'Location.status', sxpNormal);
  indexes.add('Location', 'type', 'A code for the type of location', sptTOKEN, [], 'Location.type', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEASURE}
procedure TFHIRIndexBuilderR4.buildIndexesForMeasure(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Measure', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Measure', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Measure', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Measure', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Measure', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Measure', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Measure', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Measure', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Measure', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Measure', 'composed-of', 'What resource is being referenced', sptREFERENCE, [], 'Measure.relatedArtifact.where(type=''composed-of'').resource', sxpNormal);
  indexes.add('Measure', 'date', 'The measure publication date', sptDATE, [], 'Measure.date', sxpNormal);
  indexes.add('Measure', 'depends-on', 'What resource is being referenced', sptREFERENCE, ['Library'], 'Measure.relatedArtifact.where(type=''depends-on'').resource | Measure.library', sxpNormal);
  indexes.add('Measure', 'derived-from', 'What resource is being referenced', sptREFERENCE, [], 'Measure.relatedArtifact.where(type=''derived-from'').resource', sxpNormal);
  indexes.add('Measure', 'description', 'The description of the measure', sptSTRING, [], 'Measure.description', sxpNormal);
  indexes.add('Measure', 'effective', 'The time during which the measure is intended to be in use', sptDATE, [], 'Measure.effectivePeriod', sxpNormal);
  indexes.add('Measure', 'identifier', 'External identifier for the measure', sptTOKEN, [], 'Measure.identifier', sxpNormal);
  indexes.add('Measure', 'jurisdiction', 'Intended jurisdiction for the measure', sptTOKEN, [], 'Measure.jurisdiction', sxpNormal);
  indexes.add('Measure', 'name', 'Computationally friendly name of the measure', sptSTRING, [], 'Measure.name', sxpNormal);
  indexes.add('Measure', 'predecessor', 'What resource is being referenced', sptREFERENCE, [], 'Measure.relatedArtifact.where(type=''predecessor'').resource', sxpNormal);
  indexes.add('Measure', 'publisher', 'Name of the publisher of the measure', sptSTRING, [], 'Measure.publisher', sxpNormal);
  indexes.add('Measure', 'status', 'The current status of the measure', sptTOKEN, [], 'Measure.status', sxpNormal);
  indexes.add('Measure', 'successor', 'What resource is being referenced', sptREFERENCE, [], 'Measure.relatedArtifact.where(type=''successor'').resource', sxpNormal);
  indexes.add('Measure', 'title', 'The human-friendly name of the measure', sptSTRING, [], 'Measure.title', sxpNormal);
  indexes.add('Measure', 'topic', 'Topics associated with the measure', sptTOKEN, [], 'Measure.topic', sxpNormal);
  indexes.add('Measure', 'url', 'The uri that identifies the measure', sptURI, [], 'Measure.url', sxpNormal);
  indexes.add('Measure', 'version', 'The business version of the measure', sptTOKEN, [], 'Measure.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEASUREREPORT}
procedure TFHIRIndexBuilderR4.buildIndexesForMeasureReport(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MeasureReport', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MeasureReport', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MeasureReport', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MeasureReport', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MeasureReport', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MeasureReport', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MeasureReport', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MeasureReport', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MeasureReport', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MeasureReport', 'identifier', 'External identifier of the measure report to be returned', sptTOKEN, [], 'MeasureReport.identifier', sxpNormal);
  indexes.add('MeasureReport', 'patient', 'The identity of a patient to search for individual measure report results for', sptREFERENCE, ['Patient'], 'MeasureReport.subject', sxpNormal);
  indexes.add('MeasureReport', 'status', 'The status of the measure report', sptTOKEN, [], 'MeasureReport.status', sxpNormal);
  indexes.add('MeasureReport', 'subject', 'The identity of a subject to search for individual measure report results for', sptREFERENCE, ['Practitioner', 'Group', 'Device', 'Patient', 'RelatedPerson', 'Location'], 'MeasureReport.subject', sxpNormal);
  compartments.register('Patient', 'MeasureReport', ['patient']);
end;
{$ENDIF}

{$IFDEF FHIR_MEDIA}
procedure TFHIRIndexBuilderR4.buildIndexesForMedia(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Media', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Media', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Media', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Media', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Media', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Media', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Media', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Media', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Media', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Media', 'based-on', 'Procedure that caused this media to be created', sptREFERENCE, ['CarePlan', 'ServiceRequest'], 'Media.basedOn', sxpNormal);
  indexes.add('Media', 'context', 'Encounter / Episode associated with media', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'Media.context', sxpNormal);
  indexes.add('Media', 'created', 'When Media was collected', sptDATE, [], 'Media.created', sxpNormal);
  indexes.add('Media', 'device', 'Observing Device', sptREFERENCE, ['DeviceComponent', 'Device', 'DeviceMetric'], 'Media.device', sxpNormal);
  indexes.add('Media', 'identifier', 'Identifier(s) for the image', sptTOKEN, [], 'Media.identifier', sxpNormal);
  indexes.add('Media', 'modality', 'The type of acquisition equipment/process', sptTOKEN, [], 'Media.modality', sxpNormal);
  indexes.add('Media', 'operator', 'The person who generated the image', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Media.operator', sxpNormal);
  indexes.add('Media', 'patient', 'Who/What this Media is a record of', sptREFERENCE, ['Patient'], 'Media.subject', sxpNormal);
  indexes.add('Media', 'site', 'Observed body part', sptTOKEN, [], 'Media.bodySite', sxpNormal);
  indexes.add('Media', 'status', 'preparation | in-progress | not-done | suspended | aborted | completed | entered-in-error | unknown', sptTOKEN, [], 'Media.status', sxpNormal);
  indexes.add('Media', 'subject', 'Who/What this Media is a record of', sptREFERENCE, ['Practitioner', 'Group', 'Specimen', 'Device', 'Patient', 'Location'], 'Media.subject', sxpNormal);
  indexes.add('Media', 'type', 'Classification of media as image, video, or audio', sptTOKEN, [], 'Media.type', sxpNormal);
  indexes.add('Media', 'view', 'Imaging view, e.g. Lateral or Antero-posterior', sptTOKEN, [], 'Media.view', sxpNormal);
  compartments.register('Device', 'Media', ['subject']);
  compartments.register('Patient', 'Media', ['subject']);
  compartments.register('Practitioner', 'Media', ['subject', 'operator']);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICATION}
procedure TFHIRIndexBuilderR4.buildIndexesForMedication(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Medication', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Medication', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Medication', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Medication', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Medication', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Medication', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Medication', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Medication', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Medication', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Medication', 'code', 'Codes that identify this medication', sptTOKEN, [], 'Medication.code | MedicationRequest.medication.as(CodeableConcept) | MedicationAdministration.medication.as(CodeableConcept) | MedicationStatement.medication.as(CodeableConcept) | MedicationDispense.medication.as(CodeableConcept)', sxpNormal);
  indexes.add('Medication', 'expiration-date', 'When batch will expire', sptDATE, [], 'Medication.batch.expirationDate', sxpNormal);
  indexes.add('Medication', 'form', 'powder | tablets | capsule +', sptTOKEN, [], 'Medication.form', sxpNormal);
  indexes.add('Medication', 'ingredient', 'The actual ingredient or content', sptREFERENCE, ['Medication', 'Substance'], 'Medication.ingredient.item.as(Reference)', sxpNormal);
  indexes.add('Medication', 'ingredient-code', 'The actual ingredient or content', sptTOKEN, [], 'Medication.ingredient.item.as(CodeableConcept)', sxpNormal);
  indexes.add('Medication', 'lot-number', 'Identifier assigned to batch', sptTOKEN, [], 'Medication.batch.lotNumber', sxpNormal);
  indexes.add('Medication', 'manufacturer', 'Manufacturer of the item', sptREFERENCE, ['Organization'], 'Medication.manufacturer', sxpNormal);
  indexes.add('Medication', 'serial-number', 'Identifier assigned to a drug at the time of manufacture', sptTOKEN, [], 'Medication.batch.serialNumber', sxpNormal);
  indexes.add('Medication', 'status', 'active | inactive | entered-in-error', sptTOKEN, [], 'Medication.status', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICATIONADMINISTRATION}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicationAdministration(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicationAdministration', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationAdministration', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicationAdministration', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicationAdministration', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicationAdministration', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicationAdministration', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicationAdministration', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicationAdministration', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicationAdministration', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationAdministration', 'code', 'Return administrations of this medication code', sptTOKEN, [], 'Medication.code | MedicationRequest.medication.as(CodeableConcept) | MedicationAdministration.medication.as(CodeableConcept) | MedicationStatement.medication.as(CodeableConcept) | MedicationDispense.medication.as(CodeableConcept)', sxpNormal);
  indexes.add('MedicationAdministration', 'context', 'Return administrations that share this encounter or episode of care', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'MedicationAdministration.context', sxpNormal);
  indexes.add('MedicationAdministration', 'device', 'Return administrations with this administration device identity', sptREFERENCE, ['Device'], 'MedicationAdministration.device', sxpNormal);
  indexes.add('MedicationAdministration', 'effective-time', 'Date administration happened (or did not happen)', sptDATE, [], 'MedicationAdministration.effective', sxpNormal);
  indexes.add('MedicationAdministration', 'identifier', 'Return administrations with this external identifier', sptTOKEN, [], 'MedicationRequest.identifier | MedicationAdministration.identifier | MedicationStatement.identifier | MedicationDispense.identifier', sxpNormal);
  indexes.add('MedicationAdministration', 'medication', 'Return administrations of this medication resource', sptREFERENCE, ['Medication'], 'MedicationRequest.medication.as(Reference) | MedicationAdministration.medication.as(Reference) | MedicationStatement.medication.as(Reference) | MedicationDispense.medication.as(Reference)', sxpNormal);
  indexes.add('MedicationAdministration', 'patient', 'The identity of a patient to list administrations  for', sptREFERENCE, ['Patient'], 'MedicationRequest.subject | MedicationAdministration.subject | MedicationStatement.subject | MedicationDispense.subject', sxpNormal);
  indexes.add('MedicationAdministration', 'performer', 'The identity of the individual who administered the medication', sptREFERENCE, ['Practitioner', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'MedicationAdministration.performer.actor', sxpNormal);
  indexes.add('MedicationAdministration', 'reason-given', 'Reasons for administering the medication', sptTOKEN, [], 'MedicationAdministration.reasonCode', sxpNormal);
  indexes.add('MedicationAdministration', 'reason-not-given', 'Reasons for not administering the medication', sptTOKEN, [], 'MedicationAdministration.statusReason', sxpNormal);
  indexes.add('MedicationAdministration', 'request', 'The identity of a request to list administrations from', sptREFERENCE, ['MedicationRequest'], 'MedicationAdministration.request', sxpNormal);
  indexes.add('MedicationAdministration', 'status', 'MedicationAdministration event status (for example one of active/paused/completed/nullified)', sptTOKEN, [], 'MedicationRequest.status | MedicationAdministration.status | MedicationStatement.status | MedicationDispense.status', sxpNormal);
  indexes.add('MedicationAdministration', 'subject', 'The identity of the individual or group to list administrations for', sptREFERENCE, ['Group', 'Patient'], 'MedicationAdministration.subject', sxpNormal);
  compartments.register('Device', 'MedicationAdministration', ['device']);
  compartments.register('Encounter', 'MedicationAdministration', ['context']);
  compartments.register('Patient', 'MedicationAdministration', ['patient', 'performer', 'subject']);
  compartments.register('Practitioner', 'MedicationAdministration', ['performer']);
  compartments.register('RelatedPerson', 'MedicationAdministration', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICATIONDISPENSE}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicationDispense(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicationDispense', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationDispense', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicationDispense', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicationDispense', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicationDispense', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicationDispense', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicationDispense', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicationDispense', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicationDispense', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationDispense', 'code', 'Returns dispenses of this medicine code', sptTOKEN, [], 'Medication.code | MedicationRequest.medication.as(CodeableConcept) | MedicationAdministration.medication.as(CodeableConcept) | MedicationStatement.medication.as(CodeableConcept) | MedicationDispense.medication.as(CodeableConcept)', sxpNormal);
  indexes.add('MedicationDispense', 'context', 'Returns dispenses with a specific context (episode or episode of care)', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'MedicationDispense.context', sxpNormal);
  indexes.add('MedicationDispense', 'destination', 'Returns dispenses that should be sent to a specific destination', sptREFERENCE, ['Location'], 'MedicationDispense.destination', sxpNormal);
  indexes.add('MedicationDispense', 'identifier', 'Returns dispenses with this external identifier', sptTOKEN, [], 'MedicationRequest.identifier | MedicationAdministration.identifier | MedicationStatement.identifier | MedicationDispense.identifier', sxpNormal);
  indexes.add('MedicationDispense', 'medication', 'Returns dispenses of this medicine resource', sptREFERENCE, ['Medication'], 'MedicationRequest.medication.as(Reference) | MedicationAdministration.medication.as(Reference) | MedicationStatement.medication.as(Reference) | MedicationDispense.medication.as(Reference)', sxpNormal);
  indexes.add('MedicationDispense', 'patient', 'The identity of a patient to list dispenses  for', sptREFERENCE, ['Patient'], 'MedicationRequest.subject | MedicationAdministration.subject | MedicationStatement.subject | MedicationDispense.subject', sxpNormal);
  indexes.add('MedicationDispense', 'performer', 'Returns dispenses performed by a specific individual', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'MedicationDispense.performer.actor', sxpNormal);
  indexes.add('MedicationDispense', 'prescription', 'The identity of a prescription to list dispenses from', sptREFERENCE, ['MedicationRequest'], 'MedicationDispense.authorizingPrescription', sxpNormal);
  indexes.add('MedicationDispense', 'receiver', 'The identity of a receiver to list dispenses for', sptREFERENCE, ['Practitioner', 'Patient'], 'MedicationDispense.receiver', sxpNormal);
  indexes.add('MedicationDispense', 'responsibleparty', 'Returns dispenses with the specified responsible party', sptREFERENCE, ['Practitioner'], 'MedicationDispense.substitution.responsibleParty', sxpNormal);
  indexes.add('MedicationDispense', 'status', 'Returns dispenses with a specified dispense status', sptTOKEN, [], 'MedicationRequest.status | MedicationAdministration.status | MedicationStatement.status | MedicationDispense.status', sxpNormal);
  indexes.add('MedicationDispense', 'subject', 'The identity of a patient for whom to list dispenses', sptREFERENCE, ['Group', 'Patient'], 'MedicationDispense.subject', sxpNormal);
  indexes.add('MedicationDispense', 'type', 'Returns dispenses of a specific type', sptTOKEN, [], 'MedicationDispense.type', sxpNormal);
  indexes.add('MedicationDispense', 'whenhandedover', 'Returns dispenses handed over on this date', sptDATE, [], 'MedicationDispense.whenHandedOver', sxpNormal);
  indexes.add('MedicationDispense', 'whenprepared', 'Returns dispenses prepared on this date', sptDATE, [], 'MedicationDispense.whenPrepared', sxpNormal);
  compartments.register('Patient', 'MedicationDispense', ['subject', 'patient', 'receiver']);
  compartments.register('Practitioner', 'MedicationDispense', ['performer', 'receiver']);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICATIONKNOWLEDGE}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicationKnowledge(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicationKnowledge', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationKnowledge', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicationKnowledge', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicationKnowledge', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicationKnowledge', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicationKnowledge', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicationKnowledge', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicationKnowledge', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicationKnowledge', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationKnowledge', 'classification', 'Specific category assigned to the medication', sptTOKEN, [], 'MedicationKnowledge.medicineClassification.classification', sxpNormal);
  indexes.add('MedicationKnowledge', 'classification-type', 'The type of category for the medication (for example, therapeutic classification, therapeutic sub-classification)', sptTOKEN, [], 'MedicationKnowledge.medicineClassification.type', sxpNormal);
  indexes.add('MedicationKnowledge', 'code', 'Code that identifies this medication', sptTOKEN, [], 'MedicationKnowledge.code', sxpNormal);
  indexes.add('MedicationKnowledge', 'form', 'powder | tablets | capsule +', sptTOKEN, [], 'MedicationKnowledge.form', sxpNormal);
  indexes.add('MedicationKnowledge', 'ingredient', 'Medication(s) or substance(s) contained in the medication', sptREFERENCE, ['Substance'], 'MedicationKnowledge.ingredient.item.as(Reference)', sxpNormal);
  indexes.add('MedicationKnowledge', 'ingredient-code', 'Medication(s) or substance(s) contained in the medication', sptTOKEN, [], 'MedicationKnowledge.ingredient.item.as(CodeableConcept)', sxpNormal);
  indexes.add('MedicationKnowledge', 'manufacturer', 'Manufacturer of the item', sptREFERENCE, ['Organization'], 'MedicationKnowledge.manufacturer', sxpNormal);
  indexes.add('MedicationKnowledge', 'monitoring-program-name', 'Name of the reviewing program', sptTOKEN, [], 'MedicationKnowledge.monitoringProgram.name', sxpNormal);
  indexes.add('MedicationKnowledge', 'monitoring-program-type', 'Type of program under which the medication is monitored', sptTOKEN, [], 'MedicationKnowledge.monitoringProgram.type', sxpNormal);
  indexes.add('MedicationKnowledge', 'monograph', 'Associated documentation about the medication', sptREFERENCE, ['DocumentReference'], 'MedicationKnowledge.monograph.document', sxpNormal);
  indexes.add('MedicationKnowledge', 'monograph-type', 'The category of medication document', sptTOKEN, [], 'MedicationKnowledge.monograph.type', sxpNormal);
  indexes.add('MedicationKnowledge', 'source-cost', 'The source or owner for the price information', sptTOKEN, [], 'MedicationKnowledge.cost.source', sxpNormal);
  indexes.add('MedicationKnowledge', 'status', 'active | inactive | entered-in-error', sptTOKEN, [], 'MedicationKnowledge.status', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICATIONREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicationRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicationRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicationRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicationRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicationRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicationRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicationRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicationRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicationRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationRequest', 'authoredon', 'Return prescriptions written on this date', sptDATE, [], 'MedicationRequest.authoredOn', sxpNormal);
  indexes.add('MedicationRequest', 'category', 'Returns prescriptions with different categories', sptTOKEN, [], 'MedicationRequest.category', sxpNormal);
  indexes.add('MedicationRequest', 'code', 'Return prescriptions of this medication code', sptTOKEN, [], 'Medication.code | MedicationRequest.medication.as(CodeableConcept) | MedicationAdministration.medication.as(CodeableConcept) | MedicationStatement.medication.as(CodeableConcept) | MedicationDispense.medication.as(CodeableConcept)', sxpNormal);
  indexes.add('MedicationRequest', 'context', 'Return prescriptions with this encounter or episode of care identifier', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'MedicationRequest.context', sxpNormal);
  indexes.add('MedicationRequest', 'date', 'Returns medication request to be administered on a specific date', sptDATE, [], 'MedicationRequest.dosageInstruction.timing.event', sxpNormal);
  indexes.add('MedicationRequest', 'identifier', 'Return prescriptions with this external identifier', sptTOKEN, [], 'MedicationRequest.identifier | MedicationAdministration.identifier | MedicationStatement.identifier | MedicationDispense.identifier', sxpNormal);
  indexes.add('MedicationRequest', 'intended-dispenser', 'Returns prescriptions intended to be dispensed by this Organization', sptREFERENCE, ['Organization'], 'MedicationRequest.dispenseRequest.performer', sxpNormal);
  indexes.add('MedicationRequest', 'intended-performer', 'Returns the intended performer of the administration of the medication request', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'MedicationRequest.performer', sxpNormal);
  indexes.add('MedicationRequest', 'intended-performertype', 'Returns requests for a specific type of performer', sptTOKEN, [], 'MedicationRequest.performerType', sxpNormal);
  indexes.add('MedicationRequest', 'intent', 'Returns prescriptions with different intents', sptTOKEN, [], 'MedicationRequest.intent', sxpNormal);
  indexes.add('MedicationRequest', 'medication', 'Return prescriptions for this medication reference', sptREFERENCE, ['Medication'], 'MedicationRequest.medication.as(Reference) | MedicationAdministration.medication.as(Reference) | MedicationStatement.medication.as(Reference) | MedicationDispense.medication.as(Reference)', sxpNormal);
  indexes.add('MedicationRequest', 'patient', 'Returns prescriptions for a specific patient', sptREFERENCE, ['Patient'], 'MedicationRequest.subject | MedicationAdministration.subject | MedicationStatement.subject | MedicationDispense.subject', sxpNormal);
  indexes.add('MedicationRequest', 'priority', 'Returns prescriptions with different priorities', sptTOKEN, [], 'MedicationRequest.priority', sxpNormal);
  indexes.add('MedicationRequest', 'requester', 'Returns prescriptions prescribed by this prescriber', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'MedicationRequest.requester', sxpNormal);
  indexes.add('MedicationRequest', 'status', 'Status of the prescription', sptTOKEN, [], 'MedicationRequest.status | MedicationAdministration.status | MedicationStatement.status | MedicationDispense.status', sxpNormal);
  indexes.add('MedicationRequest', 'subject', 'The identity of a patient to list orders  for', sptREFERENCE, ['Group', 'Patient'], 'MedicationRequest.subject', sxpNormal);
  compartments.register('Encounter', 'MedicationRequest', ['context']);
  compartments.register('Patient', 'MedicationRequest', ['subject']);
  compartments.register('Practitioner', 'MedicationRequest', ['requester']);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICATIONSTATEMENT}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicationStatement(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicationStatement', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationStatement', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicationStatement', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicationStatement', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicationStatement', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicationStatement', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicationStatement', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicationStatement', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicationStatement', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicationStatement', 'category', 'Returns statements of this category of medicationstatement', sptTOKEN, [], 'MedicationStatement.category', sxpNormal);
  indexes.add('MedicationStatement', 'code', 'Return statements of this medication code', sptTOKEN, [], 'Medication.code | MedicationRequest.medication.as(CodeableConcept) | MedicationAdministration.medication.as(CodeableConcept) | MedicationStatement.medication.as(CodeableConcept) | MedicationDispense.medication.as(CodeableConcept)', sxpNormal);
  indexes.add('MedicationStatement', 'context', 'Returns statements for a specific context (episode or episode of Care).', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'MedicationStatement.context', sxpNormal);
  indexes.add('MedicationStatement', 'effective', 'Date when patient was taking (or not taking) the medication', sptDATE, [], 'MedicationStatement.effective', sxpNormal);
  indexes.add('MedicationStatement', 'identifier', 'Return statements with this external identifier', sptTOKEN, [], 'MedicationRequest.identifier | MedicationAdministration.identifier | MedicationStatement.identifier | MedicationDispense.identifier', sxpNormal);
  indexes.add('MedicationStatement', 'medication', 'Return statements of this medication reference', sptREFERENCE, ['Medication'], 'MedicationRequest.medication.as(Reference) | MedicationAdministration.medication.as(Reference) | MedicationStatement.medication.as(Reference) | MedicationDispense.medication.as(Reference)', sxpNormal);
  indexes.add('MedicationStatement', 'part-of', 'Returns statements that are part of another event.', sptREFERENCE, ['MedicationDispense', 'Observation', 'MedicationAdministration', 'Procedure', 'MedicationStatement'], 'MedicationStatement.partOf', sxpNormal);
  indexes.add('MedicationStatement', 'patient', 'Returns statements for a specific patient.', sptREFERENCE, ['Patient'], 'MedicationRequest.subject | MedicationAdministration.subject | MedicationStatement.subject | MedicationDispense.subject', sxpNormal);
  indexes.add('MedicationStatement', 'source', 'Who or where the information in the statement came from', sptREFERENCE, ['Practitioner', 'Organization', 'Patient', 'RelatedPerson'], 'MedicationStatement.informationSource', sxpNormal);
  indexes.add('MedicationStatement', 'status', 'Return statements that match the given status', sptTOKEN, [], 'MedicationRequest.status | MedicationAdministration.status | MedicationStatement.status | MedicationDispense.status', sxpNormal);
  indexes.add('MedicationStatement', 'subject', 'The identity of a patient, animal or group to list statements for', sptREFERENCE, ['Group', 'Patient'], 'MedicationStatement.subject', sxpNormal);
  compartments.register('Patient', 'MedicationStatement', ['subject']);
  compartments.register('Practitioner', 'MedicationStatement', ['source']);
  compartments.register('RelatedPerson', 'MedicationStatement', ['source']);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCT}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicinalProduct(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicinalProduct', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicinalProduct', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicinalProduct', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicinalProduct', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicinalProduct', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicinalProduct', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicinalProduct', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicinalProduct', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicinalProduct', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicinalProductAuthorization(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicinalProductAuthorization', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicinalProductAuthorization', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicinalProductClinicals(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicinalProductClinicals', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicinalProductClinicals', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicinalProductDeviceSpec(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicinalProductDeviceSpec', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicinalProductDeviceSpec', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicinalProductIngredient(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicinalProductIngredient', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicinalProductIngredient', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicinalProductPackaged(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicinalProductPackaged', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicinalProductPackaged', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}
procedure TFHIRIndexBuilderR4.buildIndexesForMedicinalProductPharmaceutical(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MedicinalProductPharmaceutical', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MedicinalProductPharmaceutical', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MESSAGEDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForMessageDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MessageDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MessageDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MessageDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MessageDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MessageDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MessageDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MessageDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MessageDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MessageDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MessageDefinition', 'category', 'The behavior associated with the message', sptTOKEN, [], 'MessageDefinition.category', sxpNormal);
  indexes.add('MessageDefinition', 'date', 'The message definition publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('MessageDefinition', 'description', 'The description of the message definition', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('MessageDefinition', 'event', 'The event that triggers the message or link to the event definition.', sptTOKEN, [], 'MessageDefinition.event', sxpNormal);
  indexes.add('MessageDefinition', 'focus', 'A resource that is a permitted focus of the message', sptTOKEN, [], 'MessageDefinition.focus.code', sxpNormal);
  indexes.add('MessageDefinition', 'identifier', 'External identifier for the message definition', sptTOKEN, [], 'MessageDefinition.identifier | ExpansionProfile.identifier | StructureDefinition.identifier | ConceptMap.identifier | ValueSet.identifier | CodeSystem.identifier | StructureMap.identifier', sxpNormal);
  indexes.add('MessageDefinition', 'jurisdiction', 'Intended jurisdiction for the message definition', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('MessageDefinition', 'name', 'Computationally friendly name of the message definition', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('MessageDefinition', 'publisher', 'Name of the publisher of the message definition', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('MessageDefinition', 'status', 'The current status of the message definition', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('MessageDefinition', 'title', 'The human-friendly name of the message definition', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('MessageDefinition', 'url', 'The uri that identifies the message definition', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('MessageDefinition', 'version', 'The business version of the message definition', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_MESSAGEHEADER}
procedure TFHIRIndexBuilderR4.buildIndexesForMessageHeader(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('MessageHeader', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MessageHeader', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('MessageHeader', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('MessageHeader', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('MessageHeader', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('MessageHeader', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('MessageHeader', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('MessageHeader', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('MessageHeader', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('MessageHeader', 'author', 'The source of the decision', sptREFERENCE, ['Practitioner'], 'MessageHeader.author', sxpNormal);
  indexes.add('MessageHeader', 'code', 'ok | transient-error | fatal-error', sptTOKEN, [], 'MessageHeader.response.code', sxpNormal);
  indexes.add('MessageHeader', 'destination', 'Name of system', sptSTRING, [], 'MessageHeader.destination.name', sxpNormal);
  indexes.add('MessageHeader', 'destination-uri', 'Actual destination address or id', sptURI, [], 'MessageHeader.destination.endpoint', sxpNormal);
  indexes.add('MessageHeader', 'enterer', 'The source of the data entry', sptREFERENCE, ['Practitioner'], 'MessageHeader.enterer', sxpNormal);
  indexes.add('MessageHeader', 'event', 'Code for the event this message represents or link to event definition', sptTOKEN, [], 'MessageHeader.event', sxpNormal);
  indexes.add('MessageHeader', 'focus', 'The actual content of the message', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'MessageHeader.focus', sxpNormal);
  indexes.add('MessageHeader', 'receiver', 'Intended "real-world" recipient for the data', sptREFERENCE, ['Practitioner', 'Organization'], 'MessageHeader.destination.receiver', sxpNormal);
  indexes.add('MessageHeader', 'response-id', 'Id of original message', sptTOKEN, [], 'MessageHeader.response.identifier', sxpNormal);
  indexes.add('MessageHeader', 'responsible', 'Final responsibility for event', sptREFERENCE, ['Practitioner', 'Organization'], 'MessageHeader.responsible', sxpNormal);
  indexes.add('MessageHeader', 'sender', 'Real world sender of the message', sptREFERENCE, ['Practitioner', 'Organization'], 'MessageHeader.sender', sxpNormal);
  indexes.add('MessageHeader', 'source', 'Name of system', sptSTRING, [], 'MessageHeader.source.name', sxpNormal);
  indexes.add('MessageHeader', 'source-uri', 'Actual message source address or id', sptURI, [], 'MessageHeader.source.endpoint', sxpNormal);
  indexes.add('MessageHeader', 'target', 'Particular delivery destination within the destination', sptREFERENCE, ['Device'], 'MessageHeader.destination.target', sxpNormal);
  compartments.register('Device', 'MessageHeader', ['target']);
  compartments.register('Practitioner', 'MessageHeader', ['receiver', 'author', 'responsible', 'enterer']);
end;
{$ENDIF}

{$IFDEF FHIR_NAMINGSYSTEM}
procedure TFHIRIndexBuilderR4.buildIndexesForNamingSystem(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('NamingSystem', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('NamingSystem', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('NamingSystem', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('NamingSystem', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('NamingSystem', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('NamingSystem', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('NamingSystem', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('NamingSystem', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('NamingSystem', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('NamingSystem', 'contact', 'Name of an individual to contact', sptSTRING, [], 'NamingSystem.contact.name', sxpNormal);
  indexes.add('NamingSystem', 'date', 'The naming system publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('NamingSystem', 'description', 'The description of the naming system', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('NamingSystem', 'id-type', 'oid | uuid | uri | other', sptTOKEN, [], 'NamingSystem.uniqueId.type', sxpNormal);
  indexes.add('NamingSystem', 'jurisdiction', 'Intended jurisdiction for the naming system', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('NamingSystem', 'kind', 'codesystem | identifier | root', sptTOKEN, [], 'NamingSystem.kind', sxpNormal);
  indexes.add('NamingSystem', 'name', 'Computationally friendly name of the naming system', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('NamingSystem', 'period', 'When is identifier valid?', sptDATE, [], 'NamingSystem.uniqueId.period', sxpNormal);
  indexes.add('NamingSystem', 'publisher', 'Name of the publisher of the naming system', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('NamingSystem', 'responsible', 'Who maintains system namespace?', sptSTRING, [], 'NamingSystem.responsible', sxpNormal);
  indexes.add('NamingSystem', 'status', 'The current status of the naming system', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('NamingSystem', 'telecom', 'Contact details for individual or organization', sptTOKEN, [], 'NamingSystem.contact.telecom', sxpNormal);
  indexes.add('NamingSystem', 'type', 'e.g. driver,  provider,  patient, bank etc.', sptTOKEN, [], 'NamingSystem.type', sxpNormal);
  indexes.add('NamingSystem', 'value', 'The unique identifier', sptSTRING, [], 'NamingSystem.uniqueId.value', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_NUTRITIONORDER}
procedure TFHIRIndexBuilderR4.buildIndexesForNutritionOrder(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('NutritionOrder', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('NutritionOrder', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('NutritionOrder', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('NutritionOrder', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('NutritionOrder', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('NutritionOrder', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('NutritionOrder', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('NutritionOrder', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('NutritionOrder', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('NutritionOrder', 'additive', 'Type of module component to add to the feeding', sptTOKEN, [], 'NutritionOrder.enteralFormula.additiveType', sxpNormal);
  indexes.add('NutritionOrder', 'context', 'Return nutrition orders with this encounter identifier', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'NutritionOrder.context', sxpNormal);
  indexes.add('NutritionOrder', 'datetime', 'Return nutrition orders requested on this date', sptDATE, [], 'NutritionOrder.dateTime', sxpNormal);
  indexes.add('NutritionOrder', 'formula', 'Type of enteral or infant formula', sptTOKEN, [], 'NutritionOrder.enteralFormula.baseFormulaType', sxpNormal);
  indexes.add('NutritionOrder', 'identifier', 'Return nutrition orders with this external identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('NutritionOrder', 'oraldiet', 'Type of diet that can be consumed orally (i.e., take via the mouth).', sptTOKEN, [], 'NutritionOrder.oralDiet.type', sxpNormal);
  indexes.add('NutritionOrder', 'patient', 'The identity of the person who requires the diet, formula or nutritional supplement', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('NutritionOrder', 'provider', 'The identity of the provider who placed the nutrition order', sptREFERENCE, ['Practitioner', 'PractitionerRole'], 'NutritionOrder.orderer', sxpNormal);
  indexes.add('NutritionOrder', 'status', 'Status of the nutrition order.', sptTOKEN, [], 'NutritionOrder.status', sxpNormal);
  indexes.add('NutritionOrder', 'supplement', 'Type of supplement product requested', sptTOKEN, [], 'NutritionOrder.supplement.type', sxpNormal);
  compartments.register('Encounter', 'NutritionOrder', ['context']);
  compartments.register('Patient', 'NutritionOrder', ['patient']);
  compartments.register('Practitioner', 'NutritionOrder', ['provider']);
end;
{$ENDIF}

{$IFDEF FHIR_OBSERVATION}
procedure TFHIRIndexBuilderR4.buildIndexesForObservation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Observation', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Observation', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Observation', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Observation', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Observation', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Observation', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Observation', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Observation', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Observation', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Observation', 'based-on', 'Reference to the service request.', sptREFERENCE, ['CarePlan', 'MedicationRequest', 'NutritionOrder', 'DeviceRequest', 'ServiceRequest', 'ImmunizationRecommendation'], 'Observation.basedOn', sxpNormal);
  indexes.add('Observation', 'category', 'The classification of the type of observation', sptTOKEN, [], 'Observation.category', sxpNormal);
  indexes.add('Observation', 'code', 'The code of the observation type', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('Observation', 'code-value-concept', 'Code and coded value parameter pair', sptCOMPOSITE, [], 'Observation', sxpNormal);
  indexes.add('Observation', 'code-value-date', 'Code and date/time value parameter pair', sptCOMPOSITE, [], 'Observation', sxpNormal);
  indexes.add('Observation', 'code-value-quantity', 'Code and quantity value parameter pair', sptCOMPOSITE, [], 'Observation', sxpNormal);
  indexes.add('Observation', 'code-value-string', 'Code and string value parameter pair', sptCOMPOSITE, [], 'Observation', sxpNormal);
  indexes.add('Observation', 'combo-code', 'The code of the observation type or component type', sptTOKEN, [], 'Observation.code | Observation.component.code', sxpNormal);
  indexes.add('Observation', 'combo-code-value-concept', 'Code and coded value parameter pair, including in components', sptCOMPOSITE, [], 'Observation | Observation.component', sxpNormal);
  indexes.add('Observation', 'combo-code-value-quantity', 'Code and quantity value parameter pair, including in components', sptCOMPOSITE, [], 'Observation | Observation.component', sxpNormal);
  indexes.add('Observation', 'combo-data-absent-reason', 'The reason why the expected value in the element Observation.value[x] or Observation.component.value[x] is missing.', sptTOKEN, [], 'Observation.dataAbsentReason | Observation.component.dataAbsentReason', sxpNormal);
  indexes.add('Observation', 'combo-value-concept', 'The value or component value of the observation, if the value is a CodeableConcept', sptTOKEN, [], 'Observation.value.as(CodeableConcept) | Observation.component.value.as(CodeableConcept)', sxpNormal);
  indexes.add('Observation', 'combo-value-quantity', 'The value or component value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)', sptQUANTITY, [], 'Observation.value.as(Quantity) | Observation.component.value.as(Quantity)', sxpNormal);
  indexes.add('Observation', 'component-code', 'The component code of the observation type', sptTOKEN, [], 'Observation.component.code', sxpNormal);
  indexes.add('Observation', 'component-code-value-concept', 'Component code and component coded value parameter pair', sptCOMPOSITE, [], 'Observation.component', sxpNormal);
  indexes.add('Observation', 'component-code-value-quantity', 'Component code and component quantity value parameter pair', sptCOMPOSITE, [], 'Observation.component', sxpNormal);
  indexes.add('Observation', 'component-data-absent-reason', 'The reason why the expected value in the element Observation.component.value[x] is missing.', sptTOKEN, [], 'Observation.component.dataAbsentReason', sxpNormal);
  indexes.add('Observation', 'component-value-concept', 'The value of the component observation, if the value is a CodeableConcept', sptTOKEN, [], 'Observation.component.value.as(CodeableConcept)', sxpNormal);
  indexes.add('Observation', 'component-value-quantity', 'The value of the component observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)', sptQUANTITY, [], 'Observation.component.value.as(Quantity)', sxpNormal);
  indexes.add('Observation', 'context', 'Healthcare event  (Episode-of-care or Encounter) related to the observation', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'Observation.context', sxpNormal);
  indexes.add('Observation', 'data-absent-reason', 'The reason why the expected value in the element Observation.value[x] is missing.', sptTOKEN, [], 'Observation.dataAbsentReason', sxpNormal);
  indexes.add('Observation', 'date', 'Obtained date/time. If the obtained element is a period, a date that falls in the period', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('Observation', 'derived-from', 'Related measurements the observation is made from', sptREFERENCE, ['Media', 'Observation', 'ImagingStudy', 'Sequence', 'QuestionnaireResponse', 'DocumentReference'], 'Observation.derivedFrom', sxpNormal);
  indexes.add('Observation', 'device', 'The Device that generated the observation data.', sptREFERENCE, ['DeviceComponent', 'Device', 'DeviceMetric'], 'Observation.device', sxpNormal);
  indexes.add('Observation', 'dna-variant', 'search for extension http://hl7.org/fhir/StructureDefinition/observation-geneticsDNASequenceVariantName', sptTOKEN, [], 'Observation.extension(''http://hl7.org/fhir/StructureDefinition/observation-geneticsDNASequenceVariantName'').value', sxpNormal);
  indexes.add('Observation', 'encounter', 'Encounter related to the observation', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('Observation', 'focus', 'The focus of an observation when the focus is not the patient of record.', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Observation.focus', sxpNormal);
  indexes.add('Observation', 'gene-dnavariant', 'search for extension http://hl7.org/fhir/StructureDefinition/observation-geneticsDNAVariantId', sptTOKEN, [], 'Observation.extension(''http://hl7.org/fhir/StructureDefinition/observation-geneticsDNAVariantId'').value', sxpNormal);
  indexes.add('Observation', 'gene-identifier', 'search for extension http://hl7.org/fhir/StructureDefinition/observation-geneticsGene', sptTOKEN, [], 'Observation.extension(''http://hl7.org/fhir/StructureDefinition/observation-geneticsGene'').value', sxpNormal);
  indexes.add('Observation', 'has-member', 'Related resource that belongs to the Observation group', sptREFERENCE, ['Observation', 'Sequence', 'QuestionnaireResponse'], 'Observation.hasMember', sxpNormal);
  indexes.add('Observation', 'identifier', 'The unique id for a particular observation', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Observation', 'method', 'The method used for the observation', sptTOKEN, [], 'Observation.method', sxpNormal);
  indexes.add('Observation', 'part-of', 'Part of referenced event', sptREFERENCE, ['Immunization', 'MedicationDispense', 'MedicationAdministration', 'Procedure', 'ImagingStudy', 'MedicationStatement'], 'Observation.partOf', sxpNormal);
  indexes.add('Observation', 'patient', 'The subject that the observation is about (if patient)', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Observation', 'performer', 'Who performed the observation', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Observation.performer', sxpNormal);
  indexes.add('Observation', 'specimen', 'Specimen used for this observation', sptREFERENCE, ['Specimen'], 'Observation.specimen', sxpNormal);
  indexes.add('Observation', 'status', 'The status of the observation', sptTOKEN, [], 'Observation.status', sxpNormal);
  indexes.add('Observation', 'subject', 'The subject that the observation is about', sptREFERENCE, ['Group', 'Device', 'Patient', 'Location'], 'Observation.subject', sxpNormal);
  indexes.add('Observation', 'value-concept', 'The value of the observation, if the value is a CodeableConcept', sptTOKEN, [], 'Observation.value.as(CodeableConcept)', sxpNormal);
  indexes.add('Observation', 'value-date', 'The value of the observation, if the value is a date or period of time', sptDATE, [], 'Observation.value.as(dateTime) | Observation.value.as(Period)', sxpNormal);
  indexes.add('Observation', 'value-quantity', 'The value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)', sptQUANTITY, [], 'Observation.value.as(Quantity)', sxpNormal);
  indexes.add('Observation', 'value-string', 'The value of the observation, if the value is a string, and also searches in CodeableConcept.text', sptSTRING, [], 'Observation.value.as(string)', sxpNormal);
  compartments.register('Device', 'Observation', ['subject', 'device']);
  compartments.register('Encounter', 'Observation', ['encounter']);
  compartments.register('Patient', 'Observation', ['subject', 'performer']);
  compartments.register('Practitioner', 'Observation', ['performer']);
  compartments.register('RelatedPerson', 'Observation', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_OBSERVATIONDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForObservationDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ObservationDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ObservationDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ObservationDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ObservationDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ObservationDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ObservationDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ObservationDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ObservationDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ObservationDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_OCCUPATIONALDATA}
procedure TFHIRIndexBuilderR4.buildIndexesForOccupationalData(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('OccupationalData', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('OccupationalData', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('OccupationalData', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('OccupationalData', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('OccupationalData', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('OccupationalData', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('OccupationalData', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('OccupationalData', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('OccupationalData', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('OccupationalData', 'date', 'Obtained date/time. If the obtained element is a period, a date that falls in the period', sptDATE, [], 'OccupationalData.date', sxpNormal);
  indexes.add('OccupationalData', 'identifier', 'A business identifier for a particular occupational data record', sptTOKEN, [], 'OccupationalData.identifier', sxpNormal);
  indexes.add('OccupationalData', 'informant', 'The person who provided the subject''s health-related occupational data.', sptREFERENCE, ['Patient', 'RelatedPerson'], 'OccupationalData.informant', sxpNormal);
  indexes.add('OccupationalData', 'recorder', 'The person who recorded or updated the occupational data record', sptREFERENCE, ['Practitioner', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'OccupationalData.recorder', sxpNormal);
  indexes.add('OccupationalData', 'status', 'The status of the occupational data record', sptTOKEN, [], 'OccupationalData.status', sxpNormal);
  indexes.add('OccupationalData', 'subject', 'The subject that the occupational data record is about', sptREFERENCE, ['Patient', 'RelatedPerson'], 'OccupationalData.subject', sxpNormal);
  compartments.register('Patient', 'OccupationalData', ['subject']);
end;
{$ENDIF}

{$IFDEF FHIR_OPERATIONDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForOperationDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('OperationDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('OperationDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('OperationDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('OperationDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('OperationDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('OperationDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('OperationDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('OperationDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('OperationDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('OperationDefinition', 'base', 'Marks this as a profile of the base', sptREFERENCE, ['OperationDefinition'], 'OperationDefinition.base', sxpNormal);
  indexes.add('OperationDefinition', 'code', 'Name used to invoke the operation', sptTOKEN, [], 'OperationDefinition.code', sxpNormal);
  indexes.add('OperationDefinition', 'context-type', 'A type of use context assigned to the operation definition', sptTOKEN, [], 'SearchParameter.useContext.code | OperationDefinition.useContext.code | CompartmentDefinition.useContext.code', sxpNormal);
  indexes.add('OperationDefinition', 'date', 'The operation definition publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('OperationDefinition', 'description', 'The description of the operation definition', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('OperationDefinition', 'input-profile', 'Validation information for in parameters', sptREFERENCE, ['StructureDefinition'], 'OperationDefinition.inputProfile', sxpNormal);
  indexes.add('OperationDefinition', 'instance', 'Invoke on an instance?', sptTOKEN, [], 'OperationDefinition.instance', sxpNormal);
  indexes.add('OperationDefinition', 'jurisdiction', 'Intended jurisdiction for the operation definition', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('OperationDefinition', 'kind', 'operation | query', sptTOKEN, [], 'OperationDefinition.kind', sxpNormal);
  indexes.add('OperationDefinition', 'name', 'Computationally friendly name of the operation definition', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('OperationDefinition', 'output-profile', 'Validation information for out parameters', sptREFERENCE, ['StructureDefinition'], 'OperationDefinition.outputProfile', sxpNormal);
  indexes.add('OperationDefinition', 'publisher', 'Name of the publisher of the operation definition', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('OperationDefinition', 'status', 'The current status of the operation definition', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('OperationDefinition', 'system', 'Invoke at the system level?', sptTOKEN, [], 'OperationDefinition.system', sxpNormal);
  indexes.add('OperationDefinition', 'type', 'Invoke at the type level?', sptTOKEN, [], 'OperationDefinition.type', sxpNormal);
  indexes.add('OperationDefinition', 'url', 'The uri that identifies the operation definition', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('OperationDefinition', 'version', 'The business version of the operation definition', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_OPERATIONOUTCOME}
procedure TFHIRIndexBuilderR4.buildIndexesForOperationOutcome(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('OperationOutcome', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('OperationOutcome', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('OperationOutcome', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('OperationOutcome', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('OperationOutcome', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('OperationOutcome', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('OperationOutcome', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('OperationOutcome', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('OperationOutcome', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_ORGANIZATION}
procedure TFHIRIndexBuilderR4.buildIndexesForOrganization(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Organization', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Organization', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Organization', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Organization', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Organization', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Organization', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Organization', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Organization', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Organization', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Organization', 'active', 'Is the Organization record active', sptTOKEN, [], 'Organization.active', sxpNormal);
  indexes.add('Organization', 'address', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', sptSTRING, [], 'Organization.address', sxpNormal);
  indexes.add('Organization', 'address-city', 'A city specified in an address', sptSTRING, [], 'Organization.address.city', sxpNormal);
  indexes.add('Organization', 'address-country', 'A country specified in an address', sptSTRING, [], 'Organization.address.country', sxpNormal);
  indexes.add('Organization', 'address-postalcode', 'A postal code specified in an address', sptSTRING, [], 'Organization.address.postalCode', sxpNormal);
  indexes.add('Organization', 'address-state', 'A state specified in an address', sptSTRING, [], 'Organization.address.state', sxpNormal);
  indexes.add('Organization', 'address-use', 'A use code specified in an address', sptTOKEN, [], 'Organization.address.use', sxpNormal);
  indexes.add('Organization', 'endpoint', 'Technical endpoints providing access to services operated for the organization', sptREFERENCE, ['Endpoint'], 'Organization.endpoint', sxpNormal);
  indexes.add('Organization', 'identifier', 'Any identifier for the organization (not the accreditation issuer''s identifier)', sptTOKEN, [], 'Organization.identifier', sxpNormal);
  indexes.add('Organization', 'name', 'A portion of the organization''s name or alias', sptSTRING, [], 'Organization.name | Organization.alias', sxpNormal);
  indexes.add('Organization', 'partof', 'An organization of which this organization forms a part', sptREFERENCE, ['Organization'], 'Organization.partOf', sxpNormal);
  indexes.add('Organization', 'phonetic', 'A portion of the organization''s name using some kind of phonetic matching algorithm', sptSTRING, [], 'Organization.name', sxpPhonetic);
  indexes.add('Organization', 'type', 'A code for the type of organization', sptTOKEN, [], 'Organization.type', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_ORGANIZATIONROLE}
procedure TFHIRIndexBuilderR4.buildIndexesForOrganizationRole(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('OrganizationRole', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('OrganizationRole', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('OrganizationRole', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('OrganizationRole', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('OrganizationRole', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('OrganizationRole', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('OrganizationRole', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('OrganizationRole', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('OrganizationRole', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('OrganizationRole', 'active', 'Whether this organization role record is in active use', sptTOKEN, [], 'OrganizationRole.active', sxpNormal);
  indexes.add('OrganizationRole', 'date', 'The period during which the participatingOrganization praticipates in  these role(s)', sptDATE, [], 'OrganizationRole.period', sxpNormal);
  indexes.add('OrganizationRole', 'email', 'A value in an email contact', sptTOKEN, [], 'OrganizationRole.telecom.where(system=''email'')', sxpNormal);
  indexes.add('OrganizationRole', 'endpoint', 'Technical endpoints providing access to services operated for this role', sptREFERENCE, ['Endpoint'], 'OrganizationRole.endpoint', sxpNormal);
  indexes.add('OrganizationRole', 'identifier', 'A practitioner''s Identifier', sptTOKEN, [], 'OrganizationRole.identifier', sxpNormal);
  indexes.add('OrganizationRole', 'location', 'One of the locations at which this practitioner provides care', sptREFERENCE, ['Location'], 'OrganizationRole.location', sxpNormal);
  indexes.add('OrganizationRole', 'network', 'One of the locations at which this practitioner provides care', sptREFERENCE, ['Organization'], 'OrganizationRole.network', sxpNormal);
  indexes.add('OrganizationRole', 'participating-organization', 'Organization that is filling the role (e.g. providing services or is a member)', sptREFERENCE, ['Organization'], 'OrganizationRole.participatingOrganization', sxpNormal);
  indexes.add('OrganizationRole', 'phone', 'A value in a phone contact', sptTOKEN, [], 'OrganizationRole.telecom.where(system=''phone'')', sxpNormal);
  indexes.add('OrganizationRole', 'primary-organization', 'The identity of the organization the practitioner represents / acts on behalf of', sptREFERENCE, ['Organization'], 'OrganizationRole.organization', sxpNormal);
  indexes.add('OrganizationRole', 'role', 'The practitioner can perform this role at for the organization', sptTOKEN, [], 'OrganizationRole.code', sxpNormal);
  indexes.add('OrganizationRole', 'service', 'Healthcare services provided through the role', sptREFERENCE, ['HealthcareService'], 'OrganizationRole.healthcareService', sxpNormal);
  indexes.add('OrganizationRole', 'specialty', 'The practitioner has this specialty at an organization', sptTOKEN, [], 'OrganizationRole.specialty', sxpNormal);
  indexes.add('OrganizationRole', 'telecom', 'The value in any kind of contact', sptTOKEN, [], 'OrganizationRole.telecom', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_PATIENT}
procedure TFHIRIndexBuilderR4.buildIndexesForPatient(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Patient', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Patient', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Patient', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Patient', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Patient', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Patient', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Patient', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Patient', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Patient', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Patient', 'active', 'Whether the patient record is active', sptTOKEN, [], 'Patient.active', sxpNormal);
  indexes.add('Patient', 'address', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', sptSTRING, [], 'RelatedPerson.address | Practitioner.address | Patient.address', sxpNormal);
  indexes.add('Patient', 'address-city', 'A city specified in an address', sptSTRING, [], 'RelatedPerson.address.city | Practitioner.address.city | Patient.address.city', sxpNormal);
  indexes.add('Patient', 'address-country', 'A country specified in an address', sptSTRING, [], 'RelatedPerson.address.country | Practitioner.address.country | Patient.address.country', sxpNormal);
  indexes.add('Patient', 'address-postalcode', 'A postalCode specified in an address', sptSTRING, [], 'RelatedPerson.address.postalCode | Practitioner.address.postalCode | Patient.address.postalCode', sxpNormal);
  indexes.add('Patient', 'address-state', 'A state specified in an address', sptSTRING, [], 'RelatedPerson.address.state | Practitioner.address.state | Patient.address.state', sxpNormal);
  indexes.add('Patient', 'address-use', 'A use code specified in an address', sptTOKEN, [], 'RelatedPerson.address.use | Practitioner.address.use | Patient.address.use', sxpNormal);
  indexes.add('Patient', 'birthdate', 'The patient''s date of birth', sptDATE, [], 'RelatedPerson.birthDate | Patient.birthDate', sxpNormal);
  indexes.add('Patient', 'death-date', 'The date of death has been provided and satisfies this search value', sptDATE, [], 'Patient.deceased.as(dateTime)', sxpNormal);
  indexes.add('Patient', 'deceased', 'This patient has been marked as deceased, or as a death date entered', sptTOKEN, [], 'Patient.deceased.exists()', sxpNormal);
  indexes.add('Patient', 'email', 'A value in an email contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''email'') | RelatedPerson.telecom.where(system=''email'') | Practitioner.telecom.where(system=''email'') | Patient.telecom.where(system=''email'')', sxpNormal);
  indexes.add('Patient', 'family', 'A portion of the family name of the patient', sptSTRING, [], 'Practitioner.name.family | Patient.name.family', sxpNormal);
  indexes.add('Patient', 'gender', 'Gender of the patient', sptTOKEN, [], 'RelatedPerson.gender | Practitioner.gender | Patient.gender', sxpNormal);
  indexes.add('Patient', 'general-practitioner', 'Patient''s nominated general practitioner, not the organization that manages the record', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'Patient.generalPractitioner', sxpNormal);
  indexes.add('Patient', 'given', 'A portion of the given name of the patient', sptSTRING, [], 'Practitioner.name.given | Patient.name.given', sxpNormal);
  indexes.add('Patient', 'identifier', 'A patient identifier', sptTOKEN, [], 'Patient.identifier', sxpNormal);
  indexes.add('Patient', 'language', 'Language code (irrespective of use value)', sptTOKEN, [], 'Patient.communication.language', sxpNormal);
  indexes.add('Patient', 'link', 'All patients linked to the given patient', sptREFERENCE, ['Patient', 'RelatedPerson'], 'Patient.link.other', sxpNormal);
  indexes.add('Patient', 'name', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', sptSTRING, [], 'Patient.name', sxpNormal);
  indexes.add('Patient', 'organization', 'The organization at which this person is a patient', sptREFERENCE, ['Organization'], 'Patient.managingOrganization', sxpNormal);
  indexes.add('Patient', 'phone', 'A value in a phone contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''phone'') | RelatedPerson.telecom.where(system=''phone'') | Practitioner.telecom.where(system=''phone'') | Patient.telecom.where(system=''phone'')', sxpNormal);
  indexes.add('Patient', 'phonetic', 'A portion of either family or given name using some kind of phonetic matching algorithm', sptSTRING, [], 'RelatedPerson.name | Practitioner.name | Patient.name', sxpPhonetic);
  indexes.add('Patient', 'telecom', 'The value in any kind of telecom details of the patient', sptTOKEN, [], 'PractitionerRole.telecom | RelatedPerson.telecom | Practitioner.telecom | Patient.telecom', sxpNormal);
  compartments.register('Patient', 'Patient', ['link']);
  compartments.register('Practitioner', 'Patient', ['general-practitioner']);
  compartments.register('RelatedPerson', 'Patient', ['link']);
end;
{$ENDIF}

{$IFDEF FHIR_PAYMENTNOTICE}
procedure TFHIRIndexBuilderR4.buildIndexesForPaymentNotice(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('PaymentNotice', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PaymentNotice', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('PaymentNotice', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('PaymentNotice', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('PaymentNotice', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('PaymentNotice', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('PaymentNotice', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('PaymentNotice', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('PaymentNotice', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PaymentNotice', 'created', 'Creation date fro the notice', sptDATE, [], 'PaymentNotice.created', sxpNormal);
  indexes.add('PaymentNotice', 'identifier', 'The business identifier of the notice', sptTOKEN, [], 'PaymentNotice.identifier', sxpNormal);
  indexes.add('PaymentNotice', 'payment-status', 'The type of payment notice', sptTOKEN, [], 'PaymentNotice.paymentStatus', sxpNormal);
  indexes.add('PaymentNotice', 'provider', 'The reference to the provider', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'PaymentNotice.provider', sxpNormal);
  indexes.add('PaymentNotice', 'request', 'The Claim', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'PaymentNotice.request', sxpNormal);
  indexes.add('PaymentNotice', 'response', 'The ClaimResponse', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'PaymentNotice.response', sxpNormal);
  indexes.add('PaymentNotice', 'status', 'The status of the payment notice', sptTOKEN, [], 'PaymentNotice.status', sxpNormal);
  indexes.add('PaymentNotice', 'statusdate', 'The date of the payment action', sptDATE, [], 'PaymentNotice.statusDate', sxpNormal);
  compartments.register('Practitioner', 'PaymentNotice', ['provider']);
end;
{$ENDIF}

{$IFDEF FHIR_PAYMENTRECONCILIATION}
procedure TFHIRIndexBuilderR4.buildIndexesForPaymentReconciliation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('PaymentReconciliation', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PaymentReconciliation', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('PaymentReconciliation', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('PaymentReconciliation', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('PaymentReconciliation', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('PaymentReconciliation', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('PaymentReconciliation', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('PaymentReconciliation', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('PaymentReconciliation', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PaymentReconciliation', 'created', 'The creation date', sptDATE, [], 'PaymentReconciliation.created', sxpNormal);
  indexes.add('PaymentReconciliation', 'disposition', 'The contents of the disposition message', sptSTRING, [], 'PaymentReconciliation.disposition', sxpNormal);
  indexes.add('PaymentReconciliation', 'identifier', 'The business identifier of the Explanation of Benefit', sptTOKEN, [], 'PaymentReconciliation.identifier', sxpNormal);
  indexes.add('PaymentReconciliation', 'organization', 'The organization who generated this resource', sptREFERENCE, ['Organization'], 'PaymentReconciliation.organization', sxpNormal);
  indexes.add('PaymentReconciliation', 'outcome', 'The processing outcome', sptTOKEN, [], 'PaymentReconciliation.outcome', sxpNormal);
  indexes.add('PaymentReconciliation', 'request', 'The reference to the claim', sptREFERENCE, ['ProcessRequest'], 'PaymentReconciliation.request', sxpNormal);
  indexes.add('PaymentReconciliation', 'request-provider', 'The reference to the provider who sumbitted the claim', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'PaymentReconciliation.requestProvider', sxpNormal);
  indexes.add('PaymentReconciliation', 'status', 'The status of the payment reconciliation', sptTOKEN, [], 'PaymentReconciliation.status', sxpNormal);
  compartments.register('Practitioner', 'PaymentReconciliation', ['request-provider']);
end;
{$ENDIF}

{$IFDEF FHIR_PERSON}
procedure TFHIRIndexBuilderR4.buildIndexesForPerson(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Person', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Person', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Person', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Person', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Person', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Person', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Person', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Person', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Person', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Person', 'address', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', sptSTRING, [], 'RelatedPerson.address | Practitioner.address | Patient.address', sxpNormal);
  indexes.add('Person', 'address-city', 'A city specified in an address', sptSTRING, [], 'RelatedPerson.address.city | Practitioner.address.city | Patient.address.city', sxpNormal);
  indexes.add('Person', 'address-country', 'A country specified in an address', sptSTRING, [], 'RelatedPerson.address.country | Practitioner.address.country | Patient.address.country', sxpNormal);
  indexes.add('Person', 'address-postalcode', 'A postal code specified in an address', sptSTRING, [], 'RelatedPerson.address.postalCode | Practitioner.address.postalCode | Patient.address.postalCode', sxpNormal);
  indexes.add('Person', 'address-state', 'A state specified in an address', sptSTRING, [], 'RelatedPerson.address.state | Practitioner.address.state | Patient.address.state', sxpNormal);
  indexes.add('Person', 'address-use', 'A use code specified in an address', sptTOKEN, [], 'RelatedPerson.address.use | Practitioner.address.use | Patient.address.use', sxpNormal);
  indexes.add('Person', 'birthdate', 'The Related Person''s date of birth', sptDATE, [], 'RelatedPerson.birthDate | Patient.birthDate', sxpNormal);
  indexes.add('Person', 'email', 'A value in an email contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''email'') | RelatedPerson.telecom.where(system=''email'') | Practitioner.telecom.where(system=''email'') | Patient.telecom.where(system=''email'')', sxpNormal);
  indexes.add('Person', 'gender', 'Gender of the related person', sptTOKEN, [], 'RelatedPerson.gender | Practitioner.gender | Patient.gender', sxpNormal);
  indexes.add('Person', 'identifier', 'A person Identifier', sptTOKEN, [], 'Person.identifier', sxpNormal);
  indexes.add('Person', 'link', 'Any link has this Patient, Person, RelatedPerson or Practitioner reference', sptREFERENCE, ['Practitioner', 'Patient', 'Person', 'RelatedPerson'], 'Person.link.target', sxpNormal);
  indexes.add('Person', 'name', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', sptSTRING, [], 'Person.name', sxpNormal);
  indexes.add('Person', 'organization', 'The organization at which this person record is being managed', sptREFERENCE, ['Organization'], 'Person.managingOrganization', sxpNormal);
  indexes.add('Person', 'patient', 'The Person links to this Patient', sptREFERENCE, ['Patient'], 'Person.link.target', sxpNormal);
  indexes.add('Person', 'phone', 'A value in a phone contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''phone'') | RelatedPerson.telecom.where(system=''phone'') | Practitioner.telecom.where(system=''phone'') | Patient.telecom.where(system=''phone'')', sxpNormal);
  indexes.add('Person', 'phonetic', 'A portion of name using some kind of phonetic matching algorithm', sptSTRING, [], 'RelatedPerson.name | Practitioner.name | Patient.name', sxpPhonetic);
  indexes.add('Person', 'practitioner', 'The Person links to this Practitioner', sptREFERENCE, ['Practitioner'], 'Person.link.target', sxpNormal);
  indexes.add('Person', 'relatedperson', 'The Person links to this RelatedPerson', sptREFERENCE, ['RelatedPerson'], 'Person.link.target', sxpNormal);
  indexes.add('Person', 'telecom', 'The value in any kind of contact', sptTOKEN, [], 'PractitionerRole.telecom | RelatedPerson.telecom | Practitioner.telecom | Patient.telecom', sxpNormal);
  compartments.register('Patient', 'Person', ['patient']);
  compartments.register('Practitioner', 'Person', ['practitioner']);
  compartments.register('RelatedPerson', 'Person', ['link']);
end;
{$ENDIF}

{$IFDEF FHIR_PLANDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForPlanDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('PlanDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PlanDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('PlanDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('PlanDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('PlanDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('PlanDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('PlanDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('PlanDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('PlanDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PlanDefinition', 'composed-of', 'What resource is being referenced', sptREFERENCE, [], 'PlanDefinition.relatedArtifact.where(type=''composed-of'').resource', sxpNormal);
  indexes.add('PlanDefinition', 'date', 'The plan definition publication date', sptDATE, [], 'PlanDefinition.date', sxpNormal);
  indexes.add('PlanDefinition', 'definition', 'Activity or plan definitions used by plan definition', sptREFERENCE, ['Questionnaire', 'PlanDefinition', 'ActivityDefinition'], 'PlanDefinition.action.definition', sxpNormal);
  indexes.add('PlanDefinition', 'depends-on', 'What resource is being referenced', sptREFERENCE, ['Library'], 'PlanDefinition.relatedArtifact.where(type=''depends-on'').resource | PlanDefinition.library', sxpNormal);
  indexes.add('PlanDefinition', 'derived-from', 'What resource is being referenced', sptREFERENCE, [], 'PlanDefinition.relatedArtifact.where(type=''derived-from'').resource', sxpNormal);
  indexes.add('PlanDefinition', 'description', 'The description of the plan definition', sptSTRING, [], 'PlanDefinition.description', sxpNormal);
  indexes.add('PlanDefinition', 'effective', 'The time during which the plan definition is intended to be in use', sptDATE, [], 'PlanDefinition.effectivePeriod', sxpNormal);
  indexes.add('PlanDefinition', 'identifier', 'External identifier for the plan definition', sptTOKEN, [], 'PlanDefinition.identifier', sxpNormal);
  indexes.add('PlanDefinition', 'jurisdiction', 'Intended jurisdiction for the plan definition', sptTOKEN, [], 'PlanDefinition.jurisdiction', sxpNormal);
  indexes.add('PlanDefinition', 'name', 'Computationally friendly name of the plan definition', sptSTRING, [], 'PlanDefinition.name', sxpNormal);
  indexes.add('PlanDefinition', 'predecessor', 'What resource is being referenced', sptREFERENCE, [], 'PlanDefinition.relatedArtifact.where(type=''predecessor'').resource', sxpNormal);
  indexes.add('PlanDefinition', 'publisher', 'Name of the publisher of the plan definition', sptSTRING, [], 'PlanDefinition.publisher', sxpNormal);
  indexes.add('PlanDefinition', 'status', 'The current status of the plan definition', sptTOKEN, [], 'PlanDefinition.status', sxpNormal);
  indexes.add('PlanDefinition', 'successor', 'What resource is being referenced', sptREFERENCE, [], 'PlanDefinition.relatedArtifact.where(type=''successor'').resource', sxpNormal);
  indexes.add('PlanDefinition', 'title', 'The human-friendly name of the plan definition', sptSTRING, [], 'PlanDefinition.title', sxpNormal);
  indexes.add('PlanDefinition', 'topic', 'Topics associated with the module', sptTOKEN, [], 'PlanDefinition.topic', sxpNormal);
  indexes.add('PlanDefinition', 'type', 'The type of artifact the plan (e.g. order-set, eca-rule, protocol)', sptTOKEN, [], 'PlanDefinition.type', sxpNormal);
  indexes.add('PlanDefinition', 'url', 'The uri that identifies the plan definition', sptURI, [], 'PlanDefinition.url', sxpNormal);
  indexes.add('PlanDefinition', 'version', 'The business version of the plan definition', sptTOKEN, [], 'PlanDefinition.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_PRACTITIONER}
procedure TFHIRIndexBuilderR4.buildIndexesForPractitioner(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Practitioner', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Practitioner', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Practitioner', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Practitioner', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Practitioner', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Practitioner', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Practitioner', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Practitioner', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Practitioner', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Practitioner', 'active', 'Whether the practitioner record is active', sptTOKEN, [], 'Practitioner.active', sxpNormal);
  indexes.add('Practitioner', 'address', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', sptSTRING, [], 'RelatedPerson.address | Practitioner.address | Patient.address', sxpNormal);
  indexes.add('Practitioner', 'address-city', 'A city specified in an address', sptSTRING, [], 'RelatedPerson.address.city | Practitioner.address.city | Patient.address.city', sxpNormal);
  indexes.add('Practitioner', 'address-country', 'A country specified in an address', sptSTRING, [], 'RelatedPerson.address.country | Practitioner.address.country | Patient.address.country', sxpNormal);
  indexes.add('Practitioner', 'address-postalcode', 'A postalCode specified in an address', sptSTRING, [], 'RelatedPerson.address.postalCode | Practitioner.address.postalCode | Patient.address.postalCode', sxpNormal);
  indexes.add('Practitioner', 'address-state', 'A state specified in an address', sptSTRING, [], 'RelatedPerson.address.state | Practitioner.address.state | Patient.address.state', sxpNormal);
  indexes.add('Practitioner', 'address-use', 'A use code specified in an address', sptTOKEN, [], 'RelatedPerson.address.use | Practitioner.address.use | Patient.address.use', sxpNormal);
  indexes.add('Practitioner', 'communication', 'One of the languages that the practitioner can communicate with', sptTOKEN, [], 'Practitioner.communication', sxpNormal);
  indexes.add('Practitioner', 'email', 'A value in an email contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''email'') | RelatedPerson.telecom.where(system=''email'') | Practitioner.telecom.where(system=''email'') | Patient.telecom.where(system=''email'')', sxpNormal);
  indexes.add('Practitioner', 'family', 'A portion of the family name', sptSTRING, [], 'Practitioner.name.family | Patient.name.family', sxpNormal);
  indexes.add('Practitioner', 'gender', 'Gender of the practitioner', sptTOKEN, [], 'RelatedPerson.gender | Practitioner.gender | Patient.gender', sxpNormal);
  indexes.add('Practitioner', 'given', 'A portion of the given name', sptSTRING, [], 'Practitioner.name.given | Patient.name.given', sxpNormal);
  indexes.add('Practitioner', 'identifier', 'A practitioner''s Identifier', sptTOKEN, [], 'Practitioner.identifier', sxpNormal);
  indexes.add('Practitioner', 'name', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', sptSTRING, [], 'Practitioner.name', sxpNormal);
  indexes.add('Practitioner', 'phone', 'A value in a phone contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''phone'') | RelatedPerson.telecom.where(system=''phone'') | Practitioner.telecom.where(system=''phone'') | Patient.telecom.where(system=''phone'')', sxpNormal);
  indexes.add('Practitioner', 'phonetic', 'A portion of either family or given name using some kind of phonetic matching algorithm', sptSTRING, [], 'RelatedPerson.name | Practitioner.name | Patient.name', sxpPhonetic);
  indexes.add('Practitioner', 'telecom', 'The value in any kind of contact', sptTOKEN, [], 'PractitionerRole.telecom | RelatedPerson.telecom | Practitioner.telecom | Patient.telecom', sxpNormal);
  compartments.register('Practitioner', 'Practitioner', ['{def}']);
end;
{$ENDIF}

{$IFDEF FHIR_PRACTITIONERROLE}
procedure TFHIRIndexBuilderR4.buildIndexesForPractitionerRole(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('PractitionerRole', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PractitionerRole', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('PractitionerRole', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('PractitionerRole', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('PractitionerRole', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('PractitionerRole', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('PractitionerRole', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('PractitionerRole', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('PractitionerRole', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('PractitionerRole', 'active', 'Whether this practitioner role record is in active use', sptTOKEN, [], 'PractitionerRole.active', sxpNormal);
  indexes.add('PractitionerRole', 'date', 'The period during which the practitioner is authorized to perform in these role(s)', sptDATE, [], 'PractitionerRole.period', sxpNormal);
  indexes.add('PractitionerRole', 'email', 'A value in an email contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''email'') | RelatedPerson.telecom.where(system=''email'') | Practitioner.telecom.where(system=''email'') | Patient.telecom.where(system=''email'')', sxpNormal);
  indexes.add('PractitionerRole', 'endpoint', 'Technical endpoints providing access to services operated for the practitioner with this role', sptREFERENCE, ['Endpoint'], 'PractitionerRole.endpoint', sxpNormal);
  indexes.add('PractitionerRole', 'identifier', 'A practitioner''s Identifier', sptTOKEN, [], 'PractitionerRole.identifier', sxpNormal);
  indexes.add('PractitionerRole', 'location', 'One of the locations at which this practitioner provides care', sptREFERENCE, ['Location'], 'PractitionerRole.location', sxpNormal);
  indexes.add('PractitionerRole', 'organization', 'The identity of the organization the practitioner represents / acts on behalf of', sptREFERENCE, ['Organization'], 'PractitionerRole.organization', sxpNormal);
  indexes.add('PractitionerRole', 'phone', 'A value in a phone contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''phone'') | RelatedPerson.telecom.where(system=''phone'') | Practitioner.telecom.where(system=''phone'') | Patient.telecom.where(system=''phone'')', sxpNormal);
  indexes.add('PractitionerRole', 'practitioner', 'Practitioner that is able to provide the defined services for the organization', sptREFERENCE, ['Practitioner'], 'PractitionerRole.practitioner', sxpNormal);
  indexes.add('PractitionerRole', 'role', 'The practitioner can perform this role at for the organization', sptTOKEN, [], 'PractitionerRole.code', sxpNormal);
  indexes.add('PractitionerRole', 'service', 'The list of healthcare services that this worker provides for this role''s Organization/Location(s)', sptREFERENCE, ['HealthcareService'], 'PractitionerRole.healthcareService', sxpNormal);
  indexes.add('PractitionerRole', 'specialty', 'The practitioner has this specialty at an organization', sptTOKEN, [], 'PractitionerRole.specialty', sxpNormal);
  indexes.add('PractitionerRole', 'telecom', 'The value in any kind of contact', sptTOKEN, [], 'PractitionerRole.telecom | RelatedPerson.telecom | Practitioner.telecom | Patient.telecom', sxpNormal);
  compartments.register('Practitioner', 'PractitionerRole', ['practitioner']);
end;
{$ENDIF}

{$IFDEF FHIR_PROCEDURE}
procedure TFHIRIndexBuilderR4.buildIndexesForProcedure(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Procedure', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Procedure', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Procedure', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Procedure', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Procedure', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Procedure', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Procedure', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Procedure', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Procedure', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Procedure', 'based-on', 'A request for this procedure', sptREFERENCE, ['CarePlan', 'ServiceRequest'], 'Procedure.basedOn', sxpNormal);
  indexes.add('Procedure', 'category', 'Classification of the procedure', sptTOKEN, [], 'Procedure.category', sxpNormal);
  indexes.add('Procedure', 'code', 'A code to identify a  procedure', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('Procedure', 'context', 'Encounter or episode associated with the procedure', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'Procedure.context', sxpNormal);
  indexes.add('Procedure', 'date', 'When the procedure was performed', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('Procedure', 'encounter', 'Search by encounter', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('Procedure', 'identifier', 'A unique identifier for a procedure', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('Procedure', 'instantiates', 'Instantiates protocol or definition', sptURI, [], 'Procedure.instantiates', sxpNormal);
  indexes.add('Procedure', 'location', 'Where the procedure happened', sptREFERENCE, ['Location'], 'Procedure.location', sxpNormal);
  indexes.add('Procedure', 'part-of', 'Part of referenced event', sptREFERENCE, ['Observation', 'Procedure', 'MedicationAdministration'], 'Procedure.partOf', sxpNormal);
  indexes.add('Procedure', 'patient', 'Search by subject - a patient', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('Procedure', 'performer', 'The reference to the practitioner', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Procedure.performer.actor', sxpNormal);
  indexes.add('Procedure', 'status', 'preparation | in-progress | not-done | suspended | aborted | completed | entered-in-error | unknown', sptTOKEN, [], 'Procedure.status', sxpNormal);
  indexes.add('Procedure', 'subject', 'Search by subject', sptREFERENCE, ['Group', 'Patient'], 'Procedure.subject', sxpNormal);
  compartments.register('Encounter', 'Procedure', ['encounter']);
  compartments.register('Patient', 'Procedure', ['patient', 'performer']);
  compartments.register('Practitioner', 'Procedure', ['performer']);
  compartments.register('RelatedPerson', 'Procedure', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_PROCESSREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForProcessRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ProcessRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ProcessRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ProcessRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ProcessRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ProcessRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ProcessRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ProcessRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ProcessRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ProcessRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ProcessRequest', 'action', 'The action requested by this resource', sptTOKEN, [], 'ProcessRequest.action', sxpNormal);
  indexes.add('ProcessRequest', 'identifier', 'The business identifier of the ProcessRequest', sptTOKEN, [], 'ProcessRequest.identifier', sxpNormal);
  indexes.add('ProcessRequest', 'provider', 'The provider who regenerated this request', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'ProcessRequest.provider', sxpNormal);
  indexes.add('ProcessRequest', 'status', 'The status of the process request', sptTOKEN, [], 'ProcessRequest.status', sxpNormal);
  compartments.register('Practitioner', 'ProcessRequest', ['provider']);
end;
{$ENDIF}

{$IFDEF FHIR_PROCESSRESPONSE}
procedure TFHIRIndexBuilderR4.buildIndexesForProcessResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ProcessResponse', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ProcessResponse', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ProcessResponse', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ProcessResponse', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ProcessResponse', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ProcessResponse', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ProcessResponse', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ProcessResponse', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ProcessResponse', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ProcessResponse', 'identifier', 'The business identifier of the Explanation of Benefit', sptTOKEN, [], 'ProcessResponse.identifier', sxpNormal);
  indexes.add('ProcessResponse', 'organization', 'The organization who generated this resource', sptREFERENCE, ['Organization'], 'ProcessResponse.organization', sxpNormal);
  indexes.add('ProcessResponse', 'request', 'The reference to the claim', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'ProcessResponse.request', sxpNormal);
  indexes.add('ProcessResponse', 'request-provider', 'The Provider who is responsible the request transaction', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'ProcessResponse.requestProvider', sxpNormal);
  indexes.add('ProcessResponse', 'status', 'The status of the process response', sptTOKEN, [], 'ProcessResponse.status', sxpNormal);
  compartments.register('Practitioner', 'ProcessResponse', ['request-provider']);
end;
{$ENDIF}

{$IFDEF FHIR_PRODUCTPLAN}
procedure TFHIRIndexBuilderR4.buildIndexesForProductPlan(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ProductPlan', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ProductPlan', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ProductPlan', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ProductPlan', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ProductPlan', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ProductPlan', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ProductPlan', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ProductPlan', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ProductPlan', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ProductPlan', 'address', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', sptSTRING, [], 'ProductPlan.contact.address', sxpNormal);
  indexes.add('ProductPlan', 'address-city', 'A city specified in an address', sptSTRING, [], 'ProductPlan.contact.address.city', sxpNormal);
  indexes.add('ProductPlan', 'address-country', 'A country specified in an address', sptSTRING, [], 'ProductPlan.contact.address.country', sxpNormal);
  indexes.add('ProductPlan', 'address-postalcode', 'A postal code specified in an address', sptSTRING, [], 'ProductPlan.contact.address.postalCode', sxpNormal);
  indexes.add('ProductPlan', 'address-state', 'A state specified in an address', sptSTRING, [], 'ProductPlan.contact.address.state', sxpNormal);
  indexes.add('ProductPlan', 'address-use', 'A use code specified in an address', sptTOKEN, [], 'ProductPlan.contact.address.use', sxpNormal);
  indexes.add('ProductPlan', 'administered-by', 'Product administrator', sptREFERENCE, ['Organization'], 'ProductPlan.administeredBy', sxpNormal);
  indexes.add('ProductPlan', 'endpoint', 'Technical endpoint', sptREFERENCE, ['Endpoint'], 'ProductPlan.endpoint', sxpNormal);
  indexes.add('ProductPlan', 'identifier', 'Any identifier for the organization (not the accreditation issuer''s identifier)', sptTOKEN, [], 'ProductPlan.identifier', sxpNormal);
  indexes.add('ProductPlan', 'name', 'A portion of the organization''s name or alias', sptSTRING, [], 'name | alias', sxpNormal);
  indexes.add('ProductPlan', 'owned-by', 'An organization of which this organization forms a part', sptREFERENCE, ['Organization'], 'ProductPlan.ownedBy', sxpNormal);
  indexes.add('ProductPlan', 'phonetic', 'A portion of the organization''s name using some kind of phonetic matching algorithm', sptSTRING, [], 'ProductPlan.name', sxpPhonetic);
  indexes.add('ProductPlan', 'status', 'Is the Organization record active', sptTOKEN, [], 'ProductPlan.status', sxpNormal);
  indexes.add('ProductPlan', 'type', 'A code for the type of organization', sptTOKEN, [], 'ProductPlan.type', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_PROVENANCE}
procedure TFHIRIndexBuilderR4.buildIndexesForProvenance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Provenance', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Provenance', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Provenance', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Provenance', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Provenance', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Provenance', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Provenance', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Provenance', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Provenance', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Provenance', 'agent', 'Who participated', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Provenance.agent.who.as(Reference)', sxpNormal);
  indexes.add('Provenance', 'agent-role', 'What the agents role was', sptTOKEN, [], 'Provenance.agent.role', sxpNormal);
  indexes.add('Provenance', 'agent-type', 'How the agent participated', sptTOKEN, [], 'Provenance.agent.type', sxpNormal);
  indexes.add('Provenance', 'entity-id', 'Identity of entity', sptTOKEN, [], 'Provenance.entity.what.as(Identifier)', sxpNormal);
  indexes.add('Provenance', 'entity-ref', 'Identity of entity', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Provenance.entity.what.as(Reference)', sxpNormal);
  indexes.add('Provenance', 'location', 'Where the activity occurred, if relevant', sptREFERENCE, ['Location'], 'Provenance.location', sxpNormal);
  indexes.add('Provenance', 'patient', 'Target Reference(s) (usually version specific)', sptREFERENCE, ['Patient'], 'Provenance.target', sxpNormal);
  indexes.add('Provenance', 'recorded', 'When the activity was recorded / updated', sptDATE, [], 'Provenance.recorded', sxpNormal);
  indexes.add('Provenance', 'signature-type', 'Indication of the reason the entity signed the object(s)', sptTOKEN, [], 'Provenance.signature.type', sxpNormal);
  indexes.add('Provenance', 'target', 'Target Reference(s) (usually version specific)', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Provenance.target', sxpNormal);
  indexes.add('Provenance', 'when', 'When the activity occurred', sptDATE, [], 'Provenance.occurred.as(dateTime)', sxpNormal);
  compartments.register('Device', 'Provenance', ['agent']);
  compartments.register('Patient', 'Provenance', ['target.subject', 'target.patient', 'patient']);
  compartments.register('Practitioner', 'Provenance', ['agent']);
  compartments.register('RelatedPerson', 'Provenance', ['agent']);
end;
{$ENDIF}

{$IFDEF FHIR_QUESTIONNAIRE}
procedure TFHIRIndexBuilderR4.buildIndexesForQuestionnaire(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Questionnaire', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Questionnaire', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Questionnaire', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Questionnaire', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Questionnaire', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Questionnaire', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Questionnaire', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Questionnaire', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Questionnaire', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Questionnaire', 'code', 'A code that corresponds to one of its items in the questionnaire', sptTOKEN, [], 'Questionnaire.item.code', sxpNormal);
  indexes.add('Questionnaire', 'context-type', 'A type of use context assigned to the questionnaire', sptTOKEN, [], 'Questionnaire.useContext.code', sxpNormal);
  indexes.add('Questionnaire', 'date', 'The questionnaire publication date', sptDATE, [], 'Questionnaire.date', sxpNormal);
  indexes.add('Questionnaire', 'definition', 'ElementDefinition - details for the item', sptURI, [], 'Questionnaire.item.definition', sxpNormal);
  indexes.add('Questionnaire', 'description', 'The description of the questionnaire', sptSTRING, [], 'Questionnaire.description', sxpNormal);
  indexes.add('Questionnaire', 'effective', 'The time during which the questionnaire is intended to be in use', sptDATE, [], 'Questionnaire.effectivePeriod', sxpNormal);
  indexes.add('Questionnaire', 'identifier', 'External identifier for the questionnaire', sptTOKEN, [], 'Questionnaire.identifier', sxpNormal);
  indexes.add('Questionnaire', 'jurisdiction', 'Intended jurisdiction for the questionnaire', sptTOKEN, [], 'Questionnaire.jurisdiction', sxpNormal);
  indexes.add('Questionnaire', 'name', 'Computationally friendly name of the questionnaire', sptSTRING, [], 'Questionnaire.name', sxpNormal);
  indexes.add('Questionnaire', 'publisher', 'Name of the publisher of the questionnaire', sptSTRING, [], 'Questionnaire.publisher', sxpNormal);
  indexes.add('Questionnaire', 'status', 'The current status of the questionnaire', sptTOKEN, [], 'Questionnaire.status', sxpNormal);
  indexes.add('Questionnaire', 'subject-type', 'Resource that can be subject of QuestionnaireResponse', sptTOKEN, [], 'Questionnaire.subjectType', sxpNormal);
  indexes.add('Questionnaire', 'title', 'The human-friendly name of the questionnaire', sptSTRING, [], 'Questionnaire.title', sxpNormal);
  indexes.add('Questionnaire', 'url', 'The uri that identifies the questionnaire', sptURI, [], 'Questionnaire.url', sxpNormal);
  indexes.add('Questionnaire', 'version', 'The business version of the questionnaire', sptTOKEN, [], 'Questionnaire.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_QUESTIONNAIRERESPONSE}
procedure TFHIRIndexBuilderR4.buildIndexesForQuestionnaireResponse(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('QuestionnaireResponse', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('QuestionnaireResponse', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('QuestionnaireResponse', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('QuestionnaireResponse', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('QuestionnaireResponse', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('QuestionnaireResponse', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('QuestionnaireResponse', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('QuestionnaireResponse', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('QuestionnaireResponse', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('QuestionnaireResponse', 'author', 'The author of the questionnaire response', sptREFERENCE, ['Practitioner', 'Device', 'Patient', 'RelatedPerson'], 'QuestionnaireResponse.author', sxpNormal);
  indexes.add('QuestionnaireResponse', 'authored', 'When the questionnaire response was last changed', sptDATE, [], 'QuestionnaireResponse.authored', sxpNormal);
  indexes.add('QuestionnaireResponse', 'based-on', 'Plan/proposal/order fulfilled by this questionnaire response', sptREFERENCE, ['CarePlan', 'ServiceRequest'], 'QuestionnaireResponse.basedOn', sxpNormal);
  indexes.add('QuestionnaireResponse', 'context', 'Encounter or episode associated with the questionnaire response', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'QuestionnaireResponse.context', sxpNormal);
  indexes.add('QuestionnaireResponse', 'identifier', 'The unique identifier for the questionnaire response', sptTOKEN, [], 'QuestionnaireResponse.identifier', sxpNormal);
  indexes.add('QuestionnaireResponse', 'part-of', 'Procedure or observation this questionnaire response was performed as a part of', sptREFERENCE, ['Observation', 'Procedure'], 'QuestionnaireResponse.partOf', sxpNormal);
  indexes.add('QuestionnaireResponse', 'patient', 'The patient that is the subject of the questionnaire response', sptREFERENCE, ['Patient'], 'QuestionnaireResponse.subject', sxpNormal);
  indexes.add('QuestionnaireResponse', 'questionnaire', 'The questionnaire the answers are provided for', sptREFERENCE, ['Questionnaire'], 'QuestionnaireResponse.questionnaire', sxpNormal);
  indexes.add('QuestionnaireResponse', 'source', 'The individual providing the information reflected in the questionnaire respose', sptREFERENCE, ['Practitioner', 'Patient', 'RelatedPerson'], 'QuestionnaireResponse.source', sxpNormal);
  indexes.add('QuestionnaireResponse', 'status', 'The status of the questionnaire response', sptTOKEN, [], 'QuestionnaireResponse.status', sxpNormal);
  indexes.add('QuestionnaireResponse', 'subject', 'The subject of the questionnaire response', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'QuestionnaireResponse.subject', sxpNormal);
  compartments.register('Device', 'QuestionnaireResponse', ['author']);
  compartments.register('Encounter', 'QuestionnaireResponse', ['context']);
  compartments.register('Patient', 'QuestionnaireResponse', ['subject', 'author']);
  compartments.register('Practitioner', 'QuestionnaireResponse', ['author', 'source']);
  compartments.register('RelatedPerson', 'QuestionnaireResponse', ['author', 'source']);
end;
{$ENDIF}

{$IFDEF FHIR_RELATEDPERSON}
procedure TFHIRIndexBuilderR4.buildIndexesForRelatedPerson(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('RelatedPerson', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('RelatedPerson', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('RelatedPerson', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('RelatedPerson', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('RelatedPerson', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('RelatedPerson', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('RelatedPerson', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('RelatedPerson', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('RelatedPerson', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('RelatedPerson', 'active', 'Indicates if the related person record is active', sptTOKEN, [], 'RelatedPerson.active', sxpNormal);
  indexes.add('RelatedPerson', 'address', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', sptSTRING, [], 'RelatedPerson.address | Practitioner.address | Patient.address', sxpNormal);
  indexes.add('RelatedPerson', 'address-city', 'A city specified in an address', sptSTRING, [], 'RelatedPerson.address.city | Practitioner.address.city | Patient.address.city', sxpNormal);
  indexes.add('RelatedPerson', 'address-country', 'A country specified in an address', sptSTRING, [], 'RelatedPerson.address.country | Practitioner.address.country | Patient.address.country', sxpNormal);
  indexes.add('RelatedPerson', 'address-postalcode', 'A postal code specified in an address', sptSTRING, [], 'RelatedPerson.address.postalCode | Practitioner.address.postalCode | Patient.address.postalCode', sxpNormal);
  indexes.add('RelatedPerson', 'address-state', 'A state specified in an address', sptSTRING, [], 'RelatedPerson.address.state | Practitioner.address.state | Patient.address.state', sxpNormal);
  indexes.add('RelatedPerson', 'address-use', 'A use code specified in an address', sptTOKEN, [], 'RelatedPerson.address.use | Practitioner.address.use | Patient.address.use', sxpNormal);
  indexes.add('RelatedPerson', 'birthdate', 'The Related Person''s date of birth', sptDATE, [], 'RelatedPerson.birthDate | Patient.birthDate', sxpNormal);
  indexes.add('RelatedPerson', 'email', 'A value in an email contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''email'') | RelatedPerson.telecom.where(system=''email'') | Practitioner.telecom.where(system=''email'') | Patient.telecom.where(system=''email'')', sxpNormal);
  indexes.add('RelatedPerson', 'gender', 'Gender of the related person', sptTOKEN, [], 'RelatedPerson.gender | Practitioner.gender | Patient.gender', sxpNormal);
  indexes.add('RelatedPerson', 'identifier', 'An Identifier of the RelatedPerson', sptTOKEN, [], 'RelatedPerson.identifier', sxpNormal);
  indexes.add('RelatedPerson', 'name', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', sptSTRING, [], 'RelatedPerson.name', sxpNormal);
  indexes.add('RelatedPerson', 'patient', 'The patient this related person is related to', sptREFERENCE, ['Patient'], 'RelatedPerson.patient', sxpNormal);
  indexes.add('RelatedPerson', 'phone', 'A value in a phone contact', sptTOKEN, [], 'PractitionerRole.telecom.where(system=''phone'') | RelatedPerson.telecom.where(system=''phone'') | Practitioner.telecom.where(system=''phone'') | Patient.telecom.where(system=''phone'')', sxpNormal);
  indexes.add('RelatedPerson', 'phonetic', 'A portion of name using some kind of phonetic matching algorithm', sptSTRING, [], 'RelatedPerson.name | Practitioner.name | Patient.name', sxpPhonetic);
  indexes.add('RelatedPerson', 'telecom', 'The value in any kind of contact', sptTOKEN, [], 'PractitionerRole.telecom | RelatedPerson.telecom | Practitioner.telecom | Patient.telecom', sxpNormal);
  compartments.register('Patient', 'RelatedPerson', ['patient']);
  compartments.register('RelatedPerson', 'RelatedPerson', ['{def}']);
end;
{$ENDIF}

{$IFDEF FHIR_REQUESTGROUP}
procedure TFHIRIndexBuilderR4.buildIndexesForRequestGroup(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('RequestGroup', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('RequestGroup', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('RequestGroup', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('RequestGroup', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('RequestGroup', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('RequestGroup', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('RequestGroup', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('RequestGroup', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('RequestGroup', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('RequestGroup', 'author', 'The author of the request group', sptREFERENCE, ['Practitioner', 'Device'], 'RequestGroup.author', sxpNormal);
  indexes.add('RequestGroup', 'authored', 'The date the request group was authored', sptDATE, [], 'RequestGroup.authoredOn', sxpNormal);
  indexes.add('RequestGroup', 'code', 'The code of the request group', sptTOKEN, [], 'RequestGroup.code', sxpNormal);
  indexes.add('RequestGroup', 'context', 'The context the request group applies to', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'RequestGroup.context', sxpNormal);
  indexes.add('RequestGroup', 'encounter', 'The encounter the request group applies to', sptREFERENCE, ['Encounter'], 'RequestGroup.context', sxpNormal);
  indexes.add('RequestGroup', 'group-identifier', 'The group identifier for the request group', sptTOKEN, [], 'RequestGroup.groupIdentifier', sxpNormal);
  indexes.add('RequestGroup', 'identifier', 'External identifiers for the request group', sptTOKEN, [], 'RequestGroup.identifier', sxpNormal);
  indexes.add('RequestGroup', 'instantiates-canonical', 'The FHIR-based definition from which the request group is realized', sptREFERENCE, [], 'RequestGroup.instantiatesCanonical', sxpNormal);
  indexes.add('RequestGroup', 'instantiates-uri', 'The external definition from which the request group is realized', sptURI, [], 'RequestGroup.instantiatesUri', sxpNormal);
  indexes.add('RequestGroup', 'intent', 'The intent of the request group', sptTOKEN, [], 'RequestGroup.intent', sxpNormal);
  indexes.add('RequestGroup', 'participant', 'The participant in the requests in the group', sptREFERENCE, ['Practitioner', 'Patient', 'RelatedPerson'], 'RequestGroup.action.participant', sxpNormal);
  indexes.add('RequestGroup', 'patient', 'The identity of a patient to search for request groups', sptREFERENCE, ['Patient'], 'RequestGroup.subject', sxpNormal);
  indexes.add('RequestGroup', 'priority', 'The priority of the request group', sptTOKEN, [], 'RequestGroup.priority', sxpNormal);
  indexes.add('RequestGroup', 'status', 'The status of the request group', sptTOKEN, [], 'RequestGroup.status', sxpNormal);
  indexes.add('RequestGroup', 'subject', 'The subject that the request group is about', sptREFERENCE, ['Group', 'Patient'], 'RequestGroup.subject', sxpNormal);
  compartments.register('Device', 'RequestGroup', ['author']);
  compartments.register('Encounter', 'RequestGroup', ['encounter']);
  compartments.register('Patient', 'RequestGroup', ['subject', 'participant']);
  compartments.register('Practitioner', 'RequestGroup', ['participant', 'author']);
  compartments.register('RelatedPerson', 'RequestGroup', ['participant']);
end;
{$ENDIF}

{$IFDEF FHIR_RESEARCHSTUDY}
procedure TFHIRIndexBuilderR4.buildIndexesForResearchStudy(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ResearchStudy', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ResearchStudy', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ResearchStudy', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ResearchStudy', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ResearchStudy', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ResearchStudy', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ResearchStudy', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ResearchStudy', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ResearchStudy', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ResearchStudy', 'category', 'Classifications for the study', sptTOKEN, [], 'ResearchStudy.category', sxpNormal);
  indexes.add('ResearchStudy', 'date', 'When the study began and ended', sptDATE, [], 'ResearchStudy.period', sxpNormal);
  indexes.add('ResearchStudy', 'focus', 'Drugs, devices, etc. under study', sptTOKEN, [], 'ResearchStudy.focus', sxpNormal);
  indexes.add('ResearchStudy', 'identifier', 'Business Identifier for study', sptTOKEN, [], 'ResearchStudy.identifier', sxpNormal);
  indexes.add('ResearchStudy', 'keyword', 'Used to search for the study', sptTOKEN, [], 'ResearchStudy.keyword', sxpNormal);
  indexes.add('ResearchStudy', 'location', 'Geographic region(s) for study', sptTOKEN, [], 'ResearchStudy.location', sxpNormal);
  indexes.add('ResearchStudy', 'partof', 'Part of larger study', sptREFERENCE, ['ResearchStudy'], 'ResearchStudy.partOf', sxpNormal);
  indexes.add('ResearchStudy', 'principalinvestigator', 'Researcher who oversees multiple aspects of the study', sptREFERENCE, ['Practitioner'], 'ResearchStudy.principalInvestigator', sxpNormal);
  indexes.add('ResearchStudy', 'protocol', 'Steps followed in executing study', sptREFERENCE, ['PlanDefinition'], 'ResearchStudy.protocol', sxpNormal);
  indexes.add('ResearchStudy', 'site', 'Facility where study activities are conducted', sptREFERENCE, ['Location'], 'ResearchStudy.site', sxpNormal);
  indexes.add('ResearchStudy', 'sponsor', 'Organization that initiates and is legally responsible for the study', sptREFERENCE, ['Organization'], 'ResearchStudy.sponsor', sxpNormal);
  indexes.add('ResearchStudy', 'status', 'active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention | completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-intervention | withdrawn', sptTOKEN, [], 'ResearchStudy.status', sxpNormal);
  indexes.add('ResearchStudy', 'title', 'Name for this study', sptSTRING, [], 'ResearchStudy.title', sxpNormal);
  compartments.register('Practitioner', 'ResearchStudy', ['principalinvestigator']);
end;
{$ENDIF}

{$IFDEF FHIR_RESEARCHSUBJECT}
procedure TFHIRIndexBuilderR4.buildIndexesForResearchSubject(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ResearchSubject', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ResearchSubject', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ResearchSubject', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ResearchSubject', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ResearchSubject', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ResearchSubject', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ResearchSubject', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ResearchSubject', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ResearchSubject', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ResearchSubject', 'date', 'Start and end of participation', sptDATE, [], 'ResearchSubject.period', sxpNormal);
  indexes.add('ResearchSubject', 'identifier', 'Business Identifier for research subject in a study', sptTOKEN, [], 'ResearchSubject.identifier', sxpNormal);
  indexes.add('ResearchSubject', 'individual', 'Who is part of study', sptREFERENCE, ['Patient'], 'ResearchSubject.individual', sxpNormal);
  indexes.add('ResearchSubject', 'patient', 'Who is part of study', sptREFERENCE, ['Patient'], 'ResearchSubject.individual', sxpNormal);
  indexes.add('ResearchSubject', 'status', 'candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention | on-study-observation | pending-on-study | potential-candidate | screening | withdrawn', sptTOKEN, [], 'ResearchSubject.status', sxpNormal);
  indexes.add('ResearchSubject', 'study', 'Study subject is part of', sptREFERENCE, ['ResearchStudy'], 'ResearchSubject.study', sxpNormal);
  compartments.register('Patient', 'ResearchSubject', ['individual']);
end;
{$ENDIF}

{$IFDEF FHIR_RISKASSESSMENT}
procedure TFHIRIndexBuilderR4.buildIndexesForRiskAssessment(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('RiskAssessment', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('RiskAssessment', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('RiskAssessment', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('RiskAssessment', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('RiskAssessment', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('RiskAssessment', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('RiskAssessment', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('RiskAssessment', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('RiskAssessment', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('RiskAssessment', 'condition', 'Condition assessed', sptREFERENCE, ['Condition'], 'RiskAssessment.condition', sxpNormal);
  indexes.add('RiskAssessment', 'date', 'When was assessment made?', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('RiskAssessment', 'encounter', 'Where was assessment performed?', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('RiskAssessment', 'identifier', 'Unique identifier for the assessment', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('RiskAssessment', 'method', 'Evaluation mechanism', sptTOKEN, [], 'RiskAssessment.method', sxpNormal);
  indexes.add('RiskAssessment', 'patient', 'Who/what does assessment apply to?', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('RiskAssessment', 'performer', 'Who did assessment?', sptREFERENCE, ['Practitioner', 'Device'], 'RiskAssessment.performer', sxpNormal);
  indexes.add('RiskAssessment', 'probability', 'Likelihood of specified outcome', sptNUMBER, [], 'RiskAssessment.prediction.probability', sxpNormal);
  indexes.add('RiskAssessment', 'risk', 'Likelihood of specified outcome as a qualitative value', sptTOKEN, [], 'RiskAssessment.prediction.qualitativeRisk', sxpNormal);
  indexes.add('RiskAssessment', 'subject', 'Who/what does assessment apply to?', sptREFERENCE, ['Group', 'Patient'], 'RiskAssessment.subject', sxpNormal);
  compartments.register('Device', 'RiskAssessment', ['performer']);
  compartments.register('Patient', 'RiskAssessment', ['subject']);
  compartments.register('Practitioner', 'RiskAssessment', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_SCHEDULE}
procedure TFHIRIndexBuilderR4.buildIndexesForSchedule(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Schedule', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Schedule', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Schedule', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Schedule', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Schedule', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Schedule', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Schedule', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Schedule', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Schedule', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Schedule', 'active', 'Is the schedule in active use', sptTOKEN, [], 'Schedule.active', sxpNormal);
  indexes.add('Schedule', 'actor', 'The individual(HealthcareService, Practitioner, Location, ...) to find a Schedule for', sptREFERENCE, ['Practitioner', 'Device', 'Patient', 'HealthcareService', 'PractitionerRole', 'RelatedPerson', 'Location'], 'Schedule.actor', sxpNormal);
  indexes.add('Schedule', 'date', 'Search for Schedule resources that have a period that contains this date specified', sptDATE, [], 'Schedule.planningHorizon', sxpNormal);
  indexes.add('Schedule', 'identifier', 'A Schedule Identifier', sptTOKEN, [], 'Schedule.identifier', sxpNormal);
  indexes.add('Schedule', 'type', 'The type of appointments that can be booked into associated slot(s)', sptTOKEN, [], 'Schedule.serviceType', sxpNormal);
  compartments.register('Device', 'Schedule', ['actor']);
  compartments.register('Patient', 'Schedule', ['actor']);
  compartments.register('Practitioner', 'Schedule', ['actor']);
  compartments.register('RelatedPerson', 'Schedule', ['actor']);
end;
{$ENDIF}

{$IFDEF FHIR_SEARCHPARAMETER}
procedure TFHIRIndexBuilderR4.buildIndexesForSearchParameter(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('SearchParameter', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SearchParameter', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('SearchParameter', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('SearchParameter', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('SearchParameter', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('SearchParameter', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('SearchParameter', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('SearchParameter', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('SearchParameter', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SearchParameter', 'base', 'The resource type(s) this search parameter applies to', sptTOKEN, [], 'SearchParameter.base', sxpNormal);
  indexes.add('SearchParameter', 'code', 'Code used in URL', sptTOKEN, [], 'SearchParameter.code', sxpNormal);
  indexes.add('SearchParameter', 'component', 'Defines how the part works', sptREFERENCE, ['SearchParameter'], 'SearchParameter.component.definition', sxpNormal);
  indexes.add('SearchParameter', 'context-type', 'A type of use context assigned to the search parameter', sptTOKEN, [], 'SearchParameter.useContext.code | OperationDefinition.useContext.code | CompartmentDefinition.useContext.code', sxpNormal);
  indexes.add('SearchParameter', 'date', 'The search parameter publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('SearchParameter', 'derived-from', 'Original definition for the search parameter', sptREFERENCE, ['SearchParameter'], 'SearchParameter.derivedFrom', sxpNormal);
  indexes.add('SearchParameter', 'description', 'The description of the search parameter', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('SearchParameter', 'jurisdiction', 'Intended jurisdiction for the search parameter', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('SearchParameter', 'name', 'Computationally friendly name of the search parameter', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('SearchParameter', 'publisher', 'Name of the publisher of the search parameter', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('SearchParameter', 'status', 'The current status of the search parameter', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('SearchParameter', 'target', 'Types of resource (if a resource reference)', sptTOKEN, [], 'SearchParameter.target', sxpNormal);
  indexes.add('SearchParameter', 'type', 'number | date | string | token | reference | composite | quantity | uri', sptTOKEN, [], 'SearchParameter.type', sxpNormal);
  indexes.add('SearchParameter', 'url', 'The uri that identifies the search parameter', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('SearchParameter', 'version', 'The business version of the search parameter', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SEQUENCE}
procedure TFHIRIndexBuilderR4.buildIndexesForSequence(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Sequence', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Sequence', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Sequence', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Sequence', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Sequence', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Sequence', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Sequence', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Sequence', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Sequence', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Sequence', 'chromosome', 'Chromosome number of the reference sequence', sptTOKEN, [], 'Sequence.referenceSeq.chromosome', sxpNormal);
  indexes.add('Sequence', 'coordinate', 'Search parameter for region of the reference DNA sequence string. This will refer to part of a locus or part of a gene where search region will be represented in 1-based system. Since the coordinateSystem can either be 0-based or 1-based, this search'+' query will include the result of both coordinateSystem that contains the equivalent segment of the gene or whole genome sequence. For example, a search for sequence can be represented as `coordinate=1$lt345$gt123`, this means it will search for the '+'Sequence resource on chromosome 1 and with position >123 and <345, where in 1-based system resource, all strings within region 1:124-344 will be revealed, while in 0-based system resource, all strings within region 1:123-344 will be revealed. You may'+' want to check detail about 0-based v.s. 1-based above.', sptCOMPOSITE, [], 'Sequence.variant', sxpNormal);
  indexes.add('Sequence', 'end', 'End position (0-based exclusive, which menas the acid at this position will not be included, 1-based inclusive, which means the acid at this position will be included) of the reference sequence.', sptNUMBER, [], 'Sequence.referenceSeq.windowEnd', sxpNormal);
  indexes.add('Sequence', 'identifier', 'The unique identity for a particular sequence', sptTOKEN, [], 'Sequence.identifier', sxpNormal);
  indexes.add('Sequence', 'patient', 'The subject that the observation is about', sptREFERENCE, ['Patient'], 'Sequence.patient', sxpNormal);
  indexes.add('Sequence', 'start', 'Start position (0-based inclusive, 1-based inclusive, that means the nucleic acid or amino acid at this position will be included) of the reference sequence.', sptNUMBER, [], 'Sequence.referenceSeq.windowStart', sxpNormal);
  indexes.add('Sequence', 'type', 'Amino Acid Sequence/ DNA Sequence / RNA Sequence', sptTOKEN, [], 'Sequence.type', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SERVICEREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForServiceRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ServiceRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ServiceRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ServiceRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ServiceRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ServiceRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ServiceRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ServiceRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ServiceRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ServiceRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ServiceRequest', 'authored', 'Date request signed', sptDATE, [], 'ServiceRequest.authoredOn', sxpNormal);
  indexes.add('ServiceRequest', 'based-on', 'What request fulfills', sptREFERENCE, ['CarePlan', 'MedicationRequest', 'ServiceRequest'], 'ServiceRequest.basedOn', sxpNormal);
  indexes.add('ServiceRequest', 'body-site', 'Where procedure is going to be done', sptTOKEN, [], 'ServiceRequest.bodySite', sxpNormal);
  indexes.add('ServiceRequest', 'category', 'Classification of service', sptTOKEN, [], 'ServiceRequest.category', sxpNormal);
  indexes.add('ServiceRequest', 'code', 'What is being requested/ordered', sptTOKEN, [], 'ServiceRequest.code | FamilyMemberHistory.condition.code | DeviceRequest.code.as(CodeableConcept) | AllergyIntolerance.code | AllergyIntolerance.reaction.substance | Procedure.code | List.code | Observation.code | DiagnosticReport.code | Condition.co'+'de', sxpNormal);
  indexes.add('ServiceRequest', 'context', 'Encounter or Episode during which request was created', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'ServiceRequest.context', sxpNormal);
  indexes.add('ServiceRequest', 'encounter', 'An encounter in which this request is made', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('ServiceRequest', 'identifier', 'Identifiers assigned to this order', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('ServiceRequest', 'instantiates', 'Protocol or definition', sptURI, [], 'ServiceRequest.instantiates', sxpNormal);
  indexes.add('ServiceRequest', 'intent', 'proposal | plan | order +', sptTOKEN, [], 'ServiceRequest.intent', sxpNormal);
  indexes.add('ServiceRequest', 'occurrence', 'When service should occur', sptDATE, [], 'ServiceRequest.occurrence', sxpNormal);
  indexes.add('ServiceRequest', 'patient', 'Search by subject - a patient', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('ServiceRequest', 'performer', 'Requested performer', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'HealthcareService', 'PractitionerRole', 'RelatedPerson'], 'ServiceRequest.performer', sxpNormal);
  indexes.add('ServiceRequest', 'performer-type', 'Performer role', sptTOKEN, [], 'ServiceRequest.performerType', sxpNormal);
  indexes.add('ServiceRequest', 'priority', 'routine | urgent | asap | stat', sptTOKEN, [], 'ServiceRequest.priority', sxpNormal);
  indexes.add('ServiceRequest', 'replaces', 'What request replaces', sptREFERENCE, ['ServiceRequest'], 'ServiceRequest.replaces', sxpNormal);
  indexes.add('ServiceRequest', 'requester', 'Who/what is requesting service', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'ServiceRequest.requester', sxpNormal);
  indexes.add('ServiceRequest', 'requisition', 'Composite Request ID', sptTOKEN, [], 'ServiceRequest.requisition', sxpNormal);
  indexes.add('ServiceRequest', 'specimen', 'Specimen to be tested', sptREFERENCE, ['Specimen'], 'ServiceRequest.specimen', sxpNormal);
  indexes.add('ServiceRequest', 'status', 'draft | active | suspended | completed | entered-in-error | cancelled', sptTOKEN, [], 'ServiceRequest.status', sxpNormal);
  indexes.add('ServiceRequest', 'subject', 'Search by subject', sptREFERENCE, ['Group', 'Device', 'Patient', 'Location'], 'ServiceRequest.subject', sxpNormal);
  compartments.register('Device', 'ServiceRequest', ['performer', 'requester']);
  compartments.register('Encounter', 'ServiceRequest', ['context']);
  compartments.register('Patient', 'ServiceRequest', ['subject', 'performer']);
  compartments.register('Practitioner', 'ServiceRequest', ['performer', 'requester']);
  compartments.register('RelatedPerson', 'ServiceRequest', ['performer']);
end;
{$ENDIF}

{$IFDEF FHIR_SLOT}
procedure TFHIRIndexBuilderR4.buildIndexesForSlot(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Slot', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Slot', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Slot', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Slot', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Slot', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Slot', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Slot', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Slot', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Slot', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Slot', 'identifier', 'A Slot Identifier', sptTOKEN, [], 'Slot.identifier', sxpNormal);
  indexes.add('Slot', 'schedule', 'The Schedule Resource that we are seeking a slot within', sptREFERENCE, ['Schedule'], 'Slot.schedule', sxpNormal);
  indexes.add('Slot', 'slot-type', 'The type of appointments that can be booked into the slot', sptTOKEN, [], 'Slot.serviceType', sxpNormal);
  indexes.add('Slot', 'start', 'Appointment date/time.', sptDATE, [], 'Slot.start', sxpNormal);
  indexes.add('Slot', 'status', 'The free/busy status of the appointment', sptTOKEN, [], 'Slot.status', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SPECIMEN}
procedure TFHIRIndexBuilderR4.buildIndexesForSpecimen(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Specimen', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Specimen', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Specimen', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Specimen', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Specimen', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Specimen', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Specimen', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Specimen', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Specimen', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Specimen', 'accession', 'The accession number associated with the specimen', sptTOKEN, [], 'Specimen.accessionIdentifier', sxpNormal);
  indexes.add('Specimen', 'bodysite', 'The code for the body site from where the specimen originated', sptTOKEN, [], 'Specimen.collection.bodySite', sxpNormal);
  indexes.add('Specimen', 'collected', 'The date the specimen was collected', sptDATE, [], 'Specimen.collection.collected', sxpNormal);
  indexes.add('Specimen', 'collector', 'Who collected the specimen', sptREFERENCE, ['Practitioner'], 'Specimen.collection.collector', sxpNormal);
  indexes.add('Specimen', 'container', 'The kind of specimen container', sptTOKEN, [], 'Specimen.container.type', sxpNormal);
  indexes.add('Specimen', 'container-id', 'The unique identifier associated with the specimen container', sptTOKEN, [], 'Specimen.container.identifier', sxpNormal);
  indexes.add('Specimen', 'identifier', 'The unique identifier associated with the specimen', sptTOKEN, [], 'Specimen.identifier', sxpNormal);
  indexes.add('Specimen', 'parent', 'The parent of the specimen', sptREFERENCE, ['Specimen'], 'Specimen.parent', sxpNormal);
  indexes.add('Specimen', 'patient', 'The patient the specimen comes from', sptREFERENCE, ['Patient'], 'Specimen.subject', sxpNormal);
  indexes.add('Specimen', 'status', 'available | unavailable | unsatisfactory | entered-in-error', sptTOKEN, [], 'Specimen.status', sxpNormal);
  indexes.add('Specimen', 'subject', 'The subject of the specimen', sptREFERENCE, ['Group', 'Device', 'Patient', 'Substance', 'Location'], 'Specimen.subject', sxpNormal);
  indexes.add('Specimen', 'type', 'The specimen type', sptTOKEN, [], 'Specimen.type', sxpNormal);
  compartments.register('Device', 'Specimen', ['subject']);
  compartments.register('Patient', 'Specimen', ['subject']);
  compartments.register('Practitioner', 'Specimen', ['collector']);
end;
{$ENDIF}

{$IFDEF FHIR_SPECIMENDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForSpecimenDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('SpecimenDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SpecimenDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('SpecimenDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('SpecimenDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('SpecimenDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('SpecimenDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('SpecimenDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('SpecimenDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('SpecimenDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SpecimenDefinition', 'container', 'The type of specimen conditioned in container expected by the lab', sptTOKEN, [], 'SpecimenDefinition.specimenToLab.containerType', sxpNormal);
  indexes.add('SpecimenDefinition', 'identifier', 'The unique identifier associated with the specimen', sptTOKEN, [], 'SpecimenDefinition.identifier', sxpNormal);
  indexes.add('SpecimenDefinition', 'type', 'The type of collected specimen', sptTOKEN, [], 'SpecimenDefinition.typeCollected', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_STRUCTUREDEFINITION}
procedure TFHIRIndexBuilderR4.buildIndexesForStructureDefinition(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('StructureDefinition', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('StructureDefinition', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('StructureDefinition', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('StructureDefinition', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('StructureDefinition', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('StructureDefinition', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('StructureDefinition', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('StructureDefinition', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('StructureDefinition', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('StructureDefinition', 'abstract', 'Whether the structure is abstract', sptTOKEN, [], 'StructureDefinition.abstract', sxpNormal);
  indexes.add('StructureDefinition', 'base', 'Definition that this type is constrained/specialized from', sptREFERENCE, ['StructureDefinition'], 'StructureDefinition.baseDefinition', sxpNormal);
  indexes.add('StructureDefinition', 'base-path', 'Path that identifies the base element', sptTOKEN, [], 'StructureDefinition.snapshot.element.base.path | StructureDefinition.differential.element.base.path', sxpNormal);
  indexes.add('StructureDefinition', 'date', 'The structure definition publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('StructureDefinition', 'derivation', 'specialization | constraint - How relates to base definition', sptTOKEN, [], 'StructureDefinition.derivation', sxpNormal);
  indexes.add('StructureDefinition', 'description', 'The description of the structure definition', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('StructureDefinition', 'experimental', 'For testing purposes, not real usage', sptTOKEN, [], 'StructureDefinition.experimental', sxpNormal);
  indexes.add('StructureDefinition', 'ext-context', 'The system is the URL for the context-type: e.g. http://hl7.org/fhir/extension-context-type#element|CodeableConcept.text', sptTOKEN, [], 'StructureDefinition.context', sxpNormal);
  indexes.add('StructureDefinition', 'identifier', 'External identifier for the structure definition', sptTOKEN, [], 'MessageDefinition.identifier | ExpansionProfile.identifier | StructureDefinition.identifier | ConceptMap.identifier | ValueSet.identifier | CodeSystem.identifier | StructureMap.identifier', sxpNormal);
  indexes.add('StructureDefinition', 'jurisdiction', 'Intended jurisdiction for the structure definition', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('StructureDefinition', 'keyword', 'A code for the profile', sptTOKEN, [], 'StructureDefinition.keyword', sxpNormal);
  indexes.add('StructureDefinition', 'kind', 'primitive-type | complex-type | resource | logical', sptTOKEN, [], 'StructureDefinition.kind', sxpNormal);
  indexes.add('StructureDefinition', 'name', 'Computationally friendly name of the structure definition', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('StructureDefinition', 'path', 'A path that is constrained in the profile', sptTOKEN, [], 'StructureDefinition.snapshot.element.path | StructureDefinition.differential.element.path', sxpNormal);
  indexes.add('StructureDefinition', 'publisher', 'Name of the publisher of the structure definition', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('StructureDefinition', 'status', 'The current status of the structure definition', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('StructureDefinition', 'title', 'The human-friendly name of the structure definition', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('StructureDefinition', 'type', 'Type defined or constrained by this structure', sptURI, [], 'StructureDefinition.type', sxpNormal);
  indexes.add('StructureDefinition', 'url', 'The uri that identifies the structure definition', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('StructureDefinition', 'valueset', 'A vocabulary binding reference', sptREFERENCE, ['ValueSet'], 'StructureDefinition.snapshot.element.binding.valueSet', sxpNormal);
  indexes.add('StructureDefinition', 'version', 'The business version of the structure definition', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_STRUCTUREMAP}
procedure TFHIRIndexBuilderR4.buildIndexesForStructureMap(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('StructureMap', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('StructureMap', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('StructureMap', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('StructureMap', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('StructureMap', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('StructureMap', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('StructureMap', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('StructureMap', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('StructureMap', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('StructureMap', 'date', 'The structure map publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('StructureMap', 'description', 'The description of the structure map', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('StructureMap', 'identifier', 'External identifier for the structure map', sptTOKEN, [], 'MessageDefinition.identifier | ExpansionProfile.identifier | StructureDefinition.identifier | ConceptMap.identifier | ValueSet.identifier | CodeSystem.identifier | StructureMap.identifier', sxpNormal);
  indexes.add('StructureMap', 'jurisdiction', 'Intended jurisdiction for the structure map', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('StructureMap', 'name', 'Computationally friendly name of the structure map', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('StructureMap', 'publisher', 'Name of the publisher of the structure map', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('StructureMap', 'status', 'The current status of the structure map', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('StructureMap', 'title', 'The human-friendly name of the structure map', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('StructureMap', 'url', 'The uri that identifies the structure map', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('StructureMap', 'version', 'The business version of the structure map', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SUBSCRIPTION}
procedure TFHIRIndexBuilderR4.buildIndexesForSubscription(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Subscription', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Subscription', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Subscription', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Subscription', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Subscription', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Subscription', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Subscription', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Subscription', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Subscription', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Subscription', 'add-tag', 'A tag to be added to the resource matching the criteria', sptTOKEN, [], 'Subscription.tag', sxpNormal);
  indexes.add('Subscription', 'contact', 'Contact details for the subscription', sptTOKEN, [], 'Subscription.contact', sxpNormal);
  indexes.add('Subscription', 'criteria', 'The search rules used to determine when to send a notification', sptSTRING, [], 'Subscription.criteria', sxpNormal);
  indexes.add('Subscription', 'payload', 'The mime-type of the notification payload', sptSTRING, [], 'Subscription.channel.payload', sxpNormal);
  indexes.add('Subscription', 'status', 'The current state of the subscription', sptTOKEN, [], 'Subscription.status', sxpNormal);
  indexes.add('Subscription', 'type', 'The type of channel for the sent notifications', sptTOKEN, [], 'Subscription.channel.type', sxpNormal);
  indexes.add('Subscription', 'url', 'The uri that will receive the notifications', sptURI, [], 'Subscription.channel.endpoint', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SUBSTANCE}
procedure TFHIRIndexBuilderR4.buildIndexesForSubstance(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Substance', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Substance', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Substance', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Substance', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Substance', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Substance', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Substance', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Substance', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Substance', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Substance', 'category', 'The category of the substance', sptTOKEN, [], 'Substance.category', sxpNormal);
  indexes.add('Substance', 'code', 'The code of the substance or ingredient', sptTOKEN, [], 'Substance.code | Substance.ingredient.substance.as(CodeableConcept)', sxpNormal);
  indexes.add('Substance', 'container-identifier', 'Identifier of the package/container', sptTOKEN, [], 'Substance.instance.identifier', sxpNormal);
  indexes.add('Substance', 'expiry', 'Expiry date of package or container of substance', sptDATE, [], 'Substance.instance.expiry', sxpNormal);
  indexes.add('Substance', 'identifier', 'Unique identifier for the substance', sptTOKEN, [], 'Substance.identifier', sxpNormal);
  indexes.add('Substance', 'quantity', 'Amount of substance in the package', sptQUANTITY, [], 'Substance.instance.quantity', sxpNormal);
  indexes.add('Substance', 'status', 'active | inactive | entered-in-error', sptTOKEN, [], 'Substance.status', sxpNormal);
  indexes.add('Substance', 'substance-reference', 'A component of the substance', sptREFERENCE, ['Substance'], 'Substance.ingredient.substance.as(Reference)', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SUBSTANCEPOLYMER}
procedure TFHIRIndexBuilderR4.buildIndexesForSubstancePolymer(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('SubstancePolymer', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SubstancePolymer', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('SubstancePolymer', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('SubstancePolymer', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('SubstancePolymer', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('SubstancePolymer', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('SubstancePolymer', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('SubstancePolymer', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('SubstancePolymer', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}
procedure TFHIRIndexBuilderR4.buildIndexesForSubstanceReferenceInformation(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('SubstanceReferenceInformation', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('SubstanceReferenceInformation', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SUBSTANCESPECIFICATION}
procedure TFHIRIndexBuilderR4.buildIndexesForSubstanceSpecification(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('SubstanceSpecification', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SubstanceSpecification', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('SubstanceSpecification', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('SubstanceSpecification', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('SubstanceSpecification', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('SubstanceSpecification', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('SubstanceSpecification', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('SubstanceSpecification', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('SubstanceSpecification', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_SUPPLYDELIVERY}
procedure TFHIRIndexBuilderR4.buildIndexesForSupplyDelivery(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('SupplyDelivery', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SupplyDelivery', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('SupplyDelivery', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('SupplyDelivery', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('SupplyDelivery', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('SupplyDelivery', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('SupplyDelivery', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('SupplyDelivery', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('SupplyDelivery', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SupplyDelivery', 'identifier', 'External identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('SupplyDelivery', 'patient', 'Patient for whom the item is supplied', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('SupplyDelivery', 'receiver', 'Who collected the Supply', sptREFERENCE, ['Practitioner'], 'SupplyDelivery.receiver', sxpNormal);
  indexes.add('SupplyDelivery', 'status', 'in-progress | completed | abandoned | entered-in-error', sptTOKEN, [], 'SupplyDelivery.status', sxpNormal);
  indexes.add('SupplyDelivery', 'supplier', 'Dispenser', sptREFERENCE, ['Practitioner', 'Organization', 'PractitionerRole'], 'SupplyDelivery.supplier', sxpNormal);
  compartments.register('Patient', 'SupplyDelivery', ['patient']);
  compartments.register('Practitioner', 'SupplyDelivery', ['supplier', 'receiver']);
end;
{$ENDIF}

{$IFDEF FHIR_SUPPLYREQUEST}
procedure TFHIRIndexBuilderR4.buildIndexesForSupplyRequest(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('SupplyRequest', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SupplyRequest', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('SupplyRequest', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('SupplyRequest', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('SupplyRequest', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('SupplyRequest', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('SupplyRequest', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('SupplyRequest', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('SupplyRequest', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('SupplyRequest', 'category', 'The kind of supply (central, non-stock, etc.)', sptTOKEN, [], 'SupplyRequest.category', sxpNormal);
  indexes.add('SupplyRequest', 'date', 'When the request was made', sptDATE, [], 'Consent.dateTime | SupplyRequest.authoredOn | RiskAssessment.occurrence.as(dateTime) | CareTeam.period | FamilyMemberHistory.date | Encounter.period | AllergyIntolerance.assertedDate | CarePlan.period | EpisodeOfCare.period | Procedure.performed | Li'+'st.date | Immunization.date | Flag.period | Observation.effective | DiagnosticReport.effective | Composition.date | DetectedIssue.date | ClinicalImpression.date', sxpNormal);
  indexes.add('SupplyRequest', 'identifier', 'Unique identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('SupplyRequest', 'requester', 'Individual making the request', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'SupplyRequest.requester', sxpNormal);
  indexes.add('SupplyRequest', 'status', 'draft | active | suspended +', sptTOKEN, [], 'SupplyRequest.status', sxpNormal);
  indexes.add('SupplyRequest', 'supplier', 'Who is intended to fulfill the request', sptREFERENCE, ['Organization', 'HealthcareService'], 'SupplyRequest.supplier', sxpNormal);
  compartments.register('Device', 'SupplyRequest', ['requester']);
  compartments.register('Patient', 'SupplyRequest', ['requester']);
  compartments.register('Practitioner', 'SupplyRequest', ['requester']);
  compartments.register('RelatedPerson', 'SupplyRequest', ['requester']);
end;
{$ENDIF}

{$IFDEF FHIR_TASK}
procedure TFHIRIndexBuilderR4.buildIndexesForTask(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('Task', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Task', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('Task', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('Task', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('Task', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('Task', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('Task', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('Task', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('Task', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('Task', 'authored-on', 'Search by creation date', sptDATE, [], 'Task.authoredOn', sxpNormal);
  indexes.add('Task', 'based-on', 'Search by requests this task is based on', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Task.basedOn', sxpNormal);
  indexes.add('Task', 'business-status', 'Search by business status', sptTOKEN, [], 'Task.businessStatus', sxpNormal);
  indexes.add('Task', 'code', 'Search by task code', sptTOKEN, [], 'Task.code', sxpNormal);
  indexes.add('Task', 'context', 'Search by encounter or episode', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'Task.context', sxpNormal);
  indexes.add('Task', 'focus', 'Search by task focus', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Task.focus', sxpNormal);
  indexes.add('Task', 'group-identifier', 'Search by group identifier', sptTOKEN, [], 'Task.groupIdentifier', sxpNormal);
  indexes.add('Task', 'identifier', 'Search for a task instance by its business identifier', sptTOKEN, [], 'Task.identifier', sxpNormal);
  indexes.add('Task', 'intent', 'Search by task intent', sptTOKEN, [], 'Task.intent', sxpNormal);
  indexes.add('Task', 'modified', 'Search by last modification date', sptDATE, [], 'Task.lastModified', sxpNormal);
  indexes.add('Task', 'owner', 'Search by task owner', sptREFERENCE, ['Practitioner', 'Organization', 'CareTeam', 'Device', 'Patient', 'HealthcareService', 'PractitionerRole', 'RelatedPerson'], 'Task.owner', sxpNormal);
  indexes.add('Task', 'part-of', 'Search by task this task is part of', sptREFERENCE, ['Task'], 'Task.partOf', sxpNormal);
  indexes.add('Task', 'patient', 'Search by patient', sptREFERENCE, ['Patient'], 'Task.for', sxpNormal);
  indexes.add('Task', 'performer', 'Search by recommended type of performer (e.g., Requester, Performer, Scheduler).', sptTOKEN, [], 'Task.performerType', sxpNormal);
  indexes.add('Task', 'period', 'Search by period Task is/was underway', sptDATE, [], 'Task.executionPeriod', sxpNormal);
  indexes.add('Task', 'priority', 'Search by task priority', sptTOKEN, [], 'Task.priority', sxpNormal);
  indexes.add('Task', 'requester', 'Search by task requester', sptREFERENCE, ['Practitioner', 'Organization', 'Device', 'Patient', 'PractitionerRole', 'RelatedPerson'], 'Task.requester', sxpNormal);
  indexes.add('Task', 'status', 'Search by task status', sptTOKEN, [], 'Task.status', sxpNormal);
  indexes.add('Task', 'subject', 'Search by subject', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'Task.for', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_TERMINOLOGYCAPABILITIES}
procedure TFHIRIndexBuilderR4.buildIndexesForTerminologyCapabilities(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('TerminologyCapabilities', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('TerminologyCapabilities', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('TerminologyCapabilities', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('TerminologyCapabilities', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('TerminologyCapabilities', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('TerminologyCapabilities', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('TerminologyCapabilities', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('TerminologyCapabilities', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('TerminologyCapabilities', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('TerminologyCapabilities', 'date', 'The terminology capabilities publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('TerminologyCapabilities', 'description', 'The description of the terminology capabilities', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('TerminologyCapabilities', 'jurisdiction', 'Intended jurisdiction for the terminology capabilities', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('TerminologyCapabilities', 'name', 'Computationally friendly name of the terminology capabilities', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('TerminologyCapabilities', 'publisher', 'Name of the publisher of the terminology capabilities', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('TerminologyCapabilities', 'status', 'The current status of the terminology capabilities', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('TerminologyCapabilities', 'title', 'The human-friendly name of the terminology capabilities', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('TerminologyCapabilities', 'url', 'The uri that identifies the terminology capabilities', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('TerminologyCapabilities', 'version', 'The business version of the terminology capabilities', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_TESTREPORT}
procedure TFHIRIndexBuilderR4.buildIndexesForTestReport(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('TestReport', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('TestReport', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('TestReport', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('TestReport', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('TestReport', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('TestReport', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('TestReport', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('TestReport', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('TestReport', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('TestReport', 'identifier', 'An external identifier for the test report', sptTOKEN, [], 'TestReport.identifier', sxpNormal);
  indexes.add('TestReport', 'issued', 'The test report generation date', sptDATE, [], 'TestReport.issued', sxpNormal);
  indexes.add('TestReport', 'participant', 'The reference to a participant in the test execution', sptURI, [], 'TestReport.participant.uri', sxpNormal);
  indexes.add('TestReport', 'result', 'The result disposition of the test execution', sptTOKEN, [], 'TestReport.result', sxpNormal);
  indexes.add('TestReport', 'tester', 'The name of the testing organization', sptSTRING, [], 'TestReport.tester', sxpNormal);
  indexes.add('TestReport', 'testscript', 'The test script executed to produce this report', sptREFERENCE, ['TestScript'], 'TestReport.testScript', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_TESTSCRIPT}
procedure TFHIRIndexBuilderR4.buildIndexesForTestScript(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('TestScript', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('TestScript', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('TestScript', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('TestScript', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('TestScript', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('TestScript', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('TestScript', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('TestScript', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('TestScript', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('TestScript', 'date', 'The test script publication date', sptDATE, [], 'TestScript.date', sxpNormal);
  indexes.add('TestScript', 'description', 'The description of the test script', sptSTRING, [], 'TestScript.description', sxpNormal);
  indexes.add('TestScript', 'identifier', 'External identifier for the test script', sptTOKEN, [], 'TestScript.identifier', sxpNormal);
  indexes.add('TestScript', 'jurisdiction', 'Intended jurisdiction for the test script', sptTOKEN, [], 'TestScript.jurisdiction', sxpNormal);
  indexes.add('TestScript', 'name', 'Computationally friendly name of the test script', sptSTRING, [], 'TestScript.name', sxpNormal);
  indexes.add('TestScript', 'publisher', 'Name of the publisher of the test script', sptSTRING, [], 'TestScript.publisher', sxpNormal);
  indexes.add('TestScript', 'status', 'The current status of the test script', sptTOKEN, [], 'TestScript.status', sxpNormal);
  indexes.add('TestScript', 'testscript-capability', 'TestScript required and validated capability', sptSTRING, [], 'TestScript.metadata.capability.description', sxpNormal);
  indexes.add('TestScript', 'title', 'The human-friendly name of the test script', sptSTRING, [], 'TestScript.title', sxpNormal);
  indexes.add('TestScript', 'url', 'The uri that identifies the test script', sptURI, [], 'TestScript.url', sxpNormal);
  indexes.add('TestScript', 'version', 'The business version of the test script', sptTOKEN, [], 'TestScript.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_USERSESSION}
procedure TFHIRIndexBuilderR4.buildIndexesForUserSession(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('UserSession', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('UserSession', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('UserSession', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('UserSession', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('UserSession', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('UserSession', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('UserSession', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('UserSession', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('UserSession', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('UserSession', 'focus', 'The focus of the user session', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'UserSession.focus', sxpNormal);
  indexes.add('UserSession', 'identifier', 'External identifiers for the user session', sptTOKEN, [], 'UserSession.identifier', sxpNormal);
  indexes.add('UserSession', 'patient', 'The identity of a patient to search for user sessions', sptREFERENCE, ['Patient'], 'UserSession.focus', sxpNormal);
  indexes.add('UserSession', 'status', 'The status of the user session', sptTOKEN, [], 'UserSession.status.code', sxpNormal);
  indexes.add('UserSession', 'user', 'The user of the session', sptREFERENCE, ['Practitioner', 'Device', 'Patient', 'RelatedPerson'], 'UserSession.user', sxpNormal);
  indexes.add('UserSession', 'workstation', 'The workstation of the session', sptTOKEN, [], 'UserSession.workstation', sxpNormal);
  compartments.register('Device', 'UserSession', ['user']);
  compartments.register('Encounter', 'UserSession', ['focus']);
  compartments.register('Patient', 'UserSession', ['user', 'focus']);
  compartments.register('Practitioner', 'UserSession', ['user', 'focus']);
  compartments.register('RelatedPerson', 'UserSession', ['user']);
end;
{$ENDIF}

{$IFDEF FHIR_VALUESET}
procedure TFHIRIndexBuilderR4.buildIndexesForValueSet(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('ValueSet', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ValueSet', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('ValueSet', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('ValueSet', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('ValueSet', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('ValueSet', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('ValueSet', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('ValueSet', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('ValueSet', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('ValueSet', 'code', 'This special parameter searches for codes in the value set. See additional notes on the ValueSet resource', sptTOKEN, [], 'ValueSet.expansion.contains.code | ValueSet.compose.include.concept.code', sxpNormal);
  indexes.add('ValueSet', 'date', 'The value set publication date', sptDATE, [], 'MessageDefinition.date | CapabilityStatement.date | GraphDefinition.date | ExpansionProfile.date | ImplementationGuide.date | SearchParameter.date | StructureDefinition.date | ConceptMap.date | ValueSet.date | OperationDefinition.date | CodeSystem.da'+'te | StructureMap.date | TerminologyCapabilities.date | CompartmentDefinition.date | NamingSystem.date', sxpNormal);
  indexes.add('ValueSet', 'description', 'The description of the value set', sptSTRING, [], 'MessageDefinition.description | CapabilityStatement.description | GraphDefinition.description | ExpansionProfile.description | ImplementationGuide.description | SearchParameter.description | StructureDefinition.description | ConceptMap.description | '+'ValueSet.description | OperationDefinition.description | CodeSystem.description | StructureMap.description | TerminologyCapabilities.description | CompartmentDefinition.description | NamingSystem.description', sxpNormal);
  indexes.add('ValueSet', 'expansion', 'Uniquely identifies this expansion', sptURI, [], 'ValueSet.expansion.identifier', sxpNormal);
  indexes.add('ValueSet', 'identifier', 'External identifier for the value set', sptTOKEN, [], 'MessageDefinition.identifier | ExpansionProfile.identifier | StructureDefinition.identifier | ConceptMap.identifier | ValueSet.identifier | CodeSystem.identifier | StructureMap.identifier', sxpNormal);
  indexes.add('ValueSet', 'jurisdiction', 'Intended jurisdiction for the value set', sptTOKEN, [], 'MessageDefinition.jurisdiction | CapabilityStatement.jurisdiction | GraphDefinition.jurisdiction | ExpansionProfile.jurisdiction | ImplementationGuide.jurisdiction | SearchParameter.jurisdiction | StructureDefinition.jurisdiction | ConceptMap.jurisdi'+'ction | ValueSet.jurisdiction | OperationDefinition.jurisdiction | CodeSystem.jurisdiction | StructureMap.jurisdiction | TerminologyCapabilities.jurisdiction | CompartmentDefinition.jurisdiction | NamingSystem.jurisdiction', sxpNormal);
  indexes.add('ValueSet', 'name', 'Computationally friendly name of the value set', sptSTRING, [], 'MessageDefinition.name | CapabilityStatement.name | GraphDefinition.name | ExpansionProfile.name | ImplementationGuide.name | SearchParameter.name | StructureDefinition.name | ConceptMap.name | ValueSet.name | OperationDefinition.name | CodeSystem.na'+'me | StructureMap.name | TerminologyCapabilities.name | CompartmentDefinition.name | NamingSystem.name', sxpNormal);
  indexes.add('ValueSet', 'publisher', 'Name of the publisher of the value set', sptSTRING, [], 'MessageDefinition.publisher | CapabilityStatement.publisher | GraphDefinition.publisher | ExpansionProfile.publisher | ImplementationGuide.publisher | SearchParameter.publisher | StructureDefinition.publisher | ConceptMap.publisher | ValueSet.publish'+'er | OperationDefinition.publisher | CodeSystem.publisher | StructureMap.publisher | TerminologyCapabilities.publisher | CompartmentDefinition.publisher | NamingSystem.publisher', sxpNormal);
  indexes.add('ValueSet', 'reference', 'A code system included or excluded in the value set or an imported value set', sptURI, [], 'ValueSet.compose.include.system', sxpNormal);
  indexes.add('ValueSet', 'status', 'The current status of the value set', sptTOKEN, [], 'MessageDefinition.status | CapabilityStatement.status | GraphDefinition.status | ExpansionProfile.status | ImplementationGuide.status | SearchParameter.status | StructureDefinition.status | ConceptMap.status | ValueSet.status | OperationDefinition.st'+'atus | CodeSystem.status | StructureMap.status | TerminologyCapabilities.status | CompartmentDefinition.status | NamingSystem.status', sxpNormal);
  indexes.add('ValueSet', 'title', 'The human-friendly name of the value set', sptSTRING, [], 'MessageDefinition.title | CapabilityStatement.title | StructureDefinition.title | ConceptMap.title | ValueSet.title | CodeSystem.title | StructureMap.title | TerminologyCapabilities.title | CompartmentDefinition.title', sxpNormal);
  indexes.add('ValueSet', 'url', 'The uri that identifies the value set', sptURI, [], 'MessageDefinition.url | CapabilityStatement.url | GraphDefinition.url | ExpansionProfile.url | ImplementationGuide.url | SearchParameter.url | StructureDefinition.url | ConceptMap.url | ValueSet.url | OperationDefinition.url | CodeSystem.url | Struct'+'ureMap.url | TerminologyCapabilities.url | CompartmentDefinition.url', sxpNormal);
  indexes.add('ValueSet', 'version', 'The business version of the value set', sptTOKEN, [], 'MessageDefinition.version | CapabilityStatement.version | GraphDefinition.version | ExpansionProfile.version | ImplementationGuide.version | SearchParameter.version | StructureDefinition.version | ConceptMap.version | ValueSet.version | OperationDefi'+'nition.version | CodeSystem.version | StructureMap.version | TerminologyCapabilities.version', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_VERIFICATIONRESULT}
procedure TFHIRIndexBuilderR4.buildIndexesForVerificationResult(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('VerificationResult', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('VerificationResult', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('VerificationResult', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('VerificationResult', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('VerificationResult', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('VerificationResult', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('VerificationResult', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('VerificationResult', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('VerificationResult', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('VerificationResult', 'target', 'A resource that was validated', sptREFERENCE, ALL_RESOURCE_TYPE_NAMES, 'VerificationResult.target', sxpNormal);
end;
{$ENDIF}

{$IFDEF FHIR_VISIONPRESCRIPTION}
procedure TFHIRIndexBuilderR4.buildIndexesForVisionPrescription(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  indexes.add('VisionPrescription', '_content', 'Search on the entire content of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('VisionPrescription', '_id', 'Logical id of this artifact', sptTOKEN, [], 'Resource.id', sxpNormal);
  indexes.add('VisionPrescription', '_lastUpdated', 'When the resource version last changed', sptDATE, [], 'Resource.meta.lastUpdated', sxpNormal);
  indexes.add('VisionPrescription', '_profile', 'Profiles this resource claims to conform to', sptREFERENCE, [], 'Resource.meta.profile', sxpNormal);
  indexes.add('VisionPrescription', '_query', 'A custom search profile that describes a specific defined query operation', sptTOKEN, [], '', sxpNormal);
  indexes.add('VisionPrescription', '_security', 'Security Labels applied to this resource', sptTOKEN, [], 'Resource.meta.security', sxpNormal);
  indexes.add('VisionPrescription', '_source', 'Identifies where the resource comes from', sptURI, [], 'Resource.meta.source', sxpNormal);
  indexes.add('VisionPrescription', '_tag', 'Tags applied to this resource', sptTOKEN, [], 'Resource.meta.tag', sxpNormal);
  indexes.add('VisionPrescription', '_text', 'Search on the narrative of the resource', sptSTRING, [], '', sxpNormal);
  indexes.add('VisionPrescription', 'datewritten', 'Return prescriptions written on this date', sptDATE, [], 'VisionPrescription.dateWritten', sxpNormal);
  indexes.add('VisionPrescription', 'encounter', 'Return prescriptions with this encounter identifier', sptREFERENCE, ['EpisodeOfCare', 'Encounter'], 'DocumentReference.context.encounter | ServiceRequest.context | RiskAssessment.context | DeviceRequest.context | Procedure.context | List.encounter | VisionPrescription.encounter | Flag.encounter | Observation.context | DiagnosticReport.context | Comp'+'osition.encounter', sxpNormal);
  indexes.add('VisionPrescription', 'identifier', 'Return prescriptions with this external identifier', sptTOKEN, [], 'DocumentManifest.masterIdentifier | DocumentManifest.identifier | Goal.identifier | Consent.identifier | DocumentReference.masterIdentifier | DocumentReference.identifier | ServiceRequest.identifier | SupplyRequest.identifier | RiskAssessment.identif'+'ier | CareTeam.identifier | ImagingStudy.identifier | FamilyMemberHistory.identifier | Encounter.identifier | DeviceRequest.identifier | AllergyIntolerance.identifier | CarePlan.identifier | EpisodeOfCare.identifier | Procedure.identifier | List.iden'+'tifier | Immunization.identifier | VisionPrescription.identifier | Observation.identifier | DiagnosticReport.identifier | NutritionOrder.identifier | Condition.identifier | Composition.identifier | DetectedIssue.identifier | SupplyDelivery.identifier', sxpNormal);
  indexes.add('VisionPrescription', 'patient', 'The identity of a patient to list dispenses for', sptREFERENCE, ['Group', 'Patient'], 'DocumentManifest.subject | Goal.subject | Consent.patient | DocumentReference.subject | ServiceRequest.subject | RiskAssessment.subject | CareTeam.subject | ImagingStudy.subject | FamilyMemberHistory.patient | Encounter.subject | DeviceUseStatement.s'+'ubject | DeviceRequest.subject | AllergyIntolerance.patient | CarePlan.subject | EpisodeOfCare.patient | Procedure.subject | List.subject | Immunization.patient | VisionPrescription.patient | Flag.subject | Observation.subject | DiagnosticReport.subj'+'ect | NutritionOrder.patient | Condition.subject | Composition.subject | DetectedIssue.patient | SupplyDelivery.patient | ClinicalImpression.subject', sxpNormal);
  indexes.add('VisionPrescription', 'prescriber', 'Who authorizes the vision product', sptREFERENCE, ['Practitioner', 'PractitionerRole'], 'VisionPrescription.prescriber', sxpNormal);
  indexes.add('VisionPrescription', 'status', 'The status of the vision prescription', sptTOKEN, [], 'VisionPrescription.status', sxpNormal);
  compartments.register('Encounter', 'VisionPrescription', ['encounter']);
  compartments.register('Patient', 'VisionPrescription', ['patient']);
  compartments.register('Practitioner', 'VisionPrescription', ['prescriber']);
end;
{$ENDIF}

procedure TFHIRIndexBuilderR4.registerIndexes(Indexes : TFhirIndexList; compartments : TFHIRCompartmentList);
begin
  {$IFDEF FHIR_ACCOUNT}
  buildIndexesForAccount(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ACTIVITYDEFINITION}
  buildIndexesForActivityDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ADVERSEEVENT}
  buildIndexesForAdverseEvent(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ALLERGYINTOLERANCE}
  buildIndexesForAllergyIntolerance(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_APPOINTMENT}
  buildIndexesForAppointment(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_APPOINTMENTRESPONSE}
  buildIndexesForAppointmentResponse(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_AUDITEVENT}
  buildIndexesForAuditEvent(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_BASIC}
  buildIndexesForBasic(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_BINARY}
  buildIndexesForBinary(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}
  buildIndexesForBiologicallyDerivedProduct(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_BODYSTRUCTURE}
  buildIndexesForBodyStructure(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_BUNDLE}
  buildIndexesForBundle(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CAPABILITYSTATEMENT}
  buildIndexesForCapabilityStatement(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CAREPLAN}
  buildIndexesForCarePlan(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CARETEAM}
  buildIndexesForCareTeam(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CHARGEITEM}
  buildIndexesForChargeItem(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CHARGEITEMDEFINITION}
  buildIndexesForChargeItemDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CLAIM}
  buildIndexesForClaim(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CLAIMRESPONSE}
  buildIndexesForClaimResponse(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CLINICALIMPRESSION}
  buildIndexesForClinicalImpression(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CODESYSTEM}
  buildIndexesForCodeSystem(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_COMMUNICATION}
  buildIndexesForCommunication(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_COMMUNICATIONREQUEST}
  buildIndexesForCommunicationRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_COMPARTMENTDEFINITION}
  buildIndexesForCompartmentDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_COMPOSITION}
  buildIndexesForComposition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CONCEPTMAP}
  buildIndexesForConceptMap(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CONDITION}
  buildIndexesForCondition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CONSENT}
  buildIndexesForConsent(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_CONTRACT}
  buildIndexesForContract(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_COVERAGE}
  buildIndexesForCoverage(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DETECTEDISSUE}
  buildIndexesForDetectedIssue(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DEVICE}
  buildIndexesForDevice(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DEVICECOMPONENT}
  buildIndexesForDeviceComponent(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DEVICEMETRIC}
  buildIndexesForDeviceMetric(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DEVICEREQUEST}
  buildIndexesForDeviceRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DEVICEUSESTATEMENT}
  buildIndexesForDeviceUseStatement(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DIAGNOSTICREPORT}
  buildIndexesForDiagnosticReport(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DOCUMENTMANIFEST}
  buildIndexesForDocumentManifest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_DOCUMENTREFERENCE}
  buildIndexesForDocumentReference(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ELIGIBILITYREQUEST}
  buildIndexesForEligibilityRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ELIGIBILITYRESPONSE}
  buildIndexesForEligibilityResponse(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ENCOUNTER}
  buildIndexesForEncounter(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ENDPOINT}
  buildIndexesForEndpoint(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ENROLLMENTREQUEST}
  buildIndexesForEnrollmentRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ENROLLMENTRESPONSE}
  buildIndexesForEnrollmentResponse(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ENTRYDEFINITION}
  buildIndexesForEntryDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_EPISODEOFCARE}
  buildIndexesForEpisodeOfCare(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_EVENTDEFINITION}
  buildIndexesForEventDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_EXAMPLESCENARIO}
  buildIndexesForExampleScenario(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_EXPANSIONPROFILE}
  buildIndexesForExpansionProfile(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_EXPLANATIONOFBENEFIT}
  buildIndexesForExplanationOfBenefit(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_FAMILYMEMBERHISTORY}
  buildIndexesForFamilyMemberHistory(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_FLAG}
  buildIndexesForFlag(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_GOAL}
  buildIndexesForGoal(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_GRAPHDEFINITION}
  buildIndexesForGraphDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_GROUP}
  buildIndexesForGroup(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_GUIDANCERESPONSE}
  buildIndexesForGuidanceResponse(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_HEALTHCARESERVICE}
  buildIndexesForHealthcareService(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_IMAGINGSTUDY}
  buildIndexesForImagingStudy(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_IMMUNIZATION}
  buildIndexesForImmunization(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_IMMUNIZATIONEVALUATION}
  buildIndexesForImmunizationEvaluation(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}
  buildIndexesForImmunizationRecommendation(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_IMPLEMENTATIONGUIDE}
  buildIndexesForImplementationGuide(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_INVOICE}
  buildIndexesForInvoice(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ITEMINSTANCE}
  buildIndexesForItemInstance(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_LIBRARY}
  buildIndexesForLibrary(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_LINKAGE}
  buildIndexesForLinkage(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_LIST}
  buildIndexesForList(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_LOCATION}
  buildIndexesForLocation(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEASURE}
  buildIndexesForMeasure(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEASUREREPORT}
  buildIndexesForMeasureReport(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDIA}
  buildIndexesForMedia(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICATION}
  buildIndexesForMedication(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICATIONADMINISTRATION}
  buildIndexesForMedicationAdministration(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICATIONDISPENSE}
  buildIndexesForMedicationDispense(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICATIONKNOWLEDGE}
  buildIndexesForMedicationKnowledge(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICATIONREQUEST}
  buildIndexesForMedicationRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICATIONSTATEMENT}
  buildIndexesForMedicationStatement(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICINALPRODUCT}
  buildIndexesForMedicinalProduct(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}
  buildIndexesForMedicinalProductAuthorization(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}
  buildIndexesForMedicinalProductClinicals(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}
  buildIndexesForMedicinalProductDeviceSpec(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}
  buildIndexesForMedicinalProductIngredient(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}
  buildIndexesForMedicinalProductPackaged(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}
  buildIndexesForMedicinalProductPharmaceutical(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MESSAGEDEFINITION}
  buildIndexesForMessageDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_MESSAGEHEADER}
  buildIndexesForMessageHeader(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_NAMINGSYSTEM}
  buildIndexesForNamingSystem(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_NUTRITIONORDER}
  buildIndexesForNutritionOrder(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_OBSERVATION}
  buildIndexesForObservation(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_OBSERVATIONDEFINITION}
  buildIndexesForObservationDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_OCCUPATIONALDATA}
  buildIndexesForOccupationalData(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_OPERATIONDEFINITION}
  buildIndexesForOperationDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_OPERATIONOUTCOME}
  buildIndexesForOperationOutcome(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ORGANIZATION}
  buildIndexesForOrganization(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_ORGANIZATIONROLE}
  buildIndexesForOrganizationRole(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PATIENT}
  buildIndexesForPatient(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PAYMENTNOTICE}
  buildIndexesForPaymentNotice(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PAYMENTRECONCILIATION}
  buildIndexesForPaymentReconciliation(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PERSON}
  buildIndexesForPerson(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PLANDEFINITION}
  buildIndexesForPlanDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PRACTITIONER}
  buildIndexesForPractitioner(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PRACTITIONERROLE}
  buildIndexesForPractitionerRole(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PROCEDURE}
  buildIndexesForProcedure(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PROCESSREQUEST}
  buildIndexesForProcessRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PROCESSRESPONSE}
  buildIndexesForProcessResponse(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PRODUCTPLAN}
  buildIndexesForProductPlan(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_PROVENANCE}
  buildIndexesForProvenance(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_QUESTIONNAIRE}
  buildIndexesForQuestionnaire(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_QUESTIONNAIRERESPONSE}
  buildIndexesForQuestionnaireResponse(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_RELATEDPERSON}
  buildIndexesForRelatedPerson(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_REQUESTGROUP}
  buildIndexesForRequestGroup(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_RESEARCHSTUDY}
  buildIndexesForResearchStudy(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_RESEARCHSUBJECT}
  buildIndexesForResearchSubject(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_RISKASSESSMENT}
  buildIndexesForRiskAssessment(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SCHEDULE}
  buildIndexesForSchedule(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SEARCHPARAMETER}
  buildIndexesForSearchParameter(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SEQUENCE}
  buildIndexesForSequence(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SERVICEREQUEST}
  buildIndexesForServiceRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SLOT}
  buildIndexesForSlot(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SPECIMEN}
  buildIndexesForSpecimen(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SPECIMENDEFINITION}
  buildIndexesForSpecimenDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_STRUCTUREDEFINITION}
  buildIndexesForStructureDefinition(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_STRUCTUREMAP}
  buildIndexesForStructureMap(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SUBSCRIPTION}
  buildIndexesForSubscription(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SUBSTANCE}
  buildIndexesForSubstance(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SUBSTANCEPOLYMER}
  buildIndexesForSubstancePolymer(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}
  buildIndexesForSubstanceReferenceInformation(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SUBSTANCESPECIFICATION}
  buildIndexesForSubstanceSpecification(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SUPPLYDELIVERY}
  buildIndexesForSupplyDelivery(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_SUPPLYREQUEST}
  buildIndexesForSupplyRequest(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_TASK}
  buildIndexesForTask(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_TERMINOLOGYCAPABILITIES}
  buildIndexesForTerminologyCapabilities(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_TESTREPORT}
  buildIndexesForTestReport(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_TESTSCRIPT}
  buildIndexesForTestScript(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_USERSESSION}
  buildIndexesForUserSession(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_VALUESET}
  buildIndexesForValueSet(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_VERIFICATIONRESULT}
  buildIndexesForVerificationResult(Indexes, compartments);
  {$ENDIF}
  {$IFDEF FHIR_VISIONPRESCRIPTION}
  buildIndexesForVisionPrescription(Indexes, compartments);
  {$ENDIF}
end;

end.

