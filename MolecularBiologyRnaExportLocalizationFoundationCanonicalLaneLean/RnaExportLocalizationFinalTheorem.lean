import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.NuclearPoreComplexStructure
import HautevilleHouse.MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.ExportinRanCycle
import HautevilleHouse.MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.RnaExportSignalRecognition
import HautevilleHouse.MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.NuclearRetentionRegulation
import HautevilleHouse.MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.CytoplasmicLocalizationAndTransport

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportLocalizationAdmissibleClass where
  object : AdmittedObject
  nuclearPoreEvidence : NuclearPoreComplexEvidence NuclearPoreComplexPackage
  exportinRanEvidence : ExportinRanCycleEvidence ExportinRanCyclePackage
  signalRecognitionEvidence : RnaExportSignalRecognitionEvidence RnaExportSignalRecognitionPackage
  retentionRegulationEvidence : NuclearRetentionRegulationEvidence NuclearRetentionRegulationPackage
  cytoplasmicTransportEvidence : CytoplasmicLocalizationAndTransportEvidence CytoplasmicLocalizationAndTransportPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

abbrev bridgeClosed (A : RnaExportLocalizationAdmissibleClass) : Prop :=
  NuclearPoreComplexClosed A.nuclearPoreEvidence ∧
  ExportinRanCycleClosed A.exportinRanEvidence ∧
  RnaExportSignalRecognitionClosed A.signalRecognitionEvidence ∧
  NuclearRetentionRegulationClosed A.retentionRegulationEvidence ∧
  CytoplasmicLocalizationAndTransportClosed A.cytoplasmicTransportEvidence

def gateClosed (A : RnaExportLocalizationAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedRnaExportLocalizationClosure (A : RnaExportLocalizationAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : RnaExportLocalizationAdmissibleClass) :
    bridgeClosed A := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact nuclear_pore_complex_closed_from_evidence _ A.nuclearPoreEvidence
  · exact exportin_ran_cycle_closed_from_evidence _ A.exportinRanEvidence
  · exact rna_export_signal_recognition_closed_from_evidence _ A.signalRecognitionEvidence
  · exact nuclear_retention_regulation_closed_from_evidence _ A.retentionRegulationEvidence
  · exact cytoplasmic_localization_and_transport_closed_from_evidence _ A.cytoplasmicTransportEvidence

theorem gate_from_admissible_class (A : RnaExportLocalizationAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem rna_export_localization_endgame (A : RnaExportLocalizationAdmissibleClass) :
    ConstrainedRnaExportLocalizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse