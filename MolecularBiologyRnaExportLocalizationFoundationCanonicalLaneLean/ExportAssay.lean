import MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.RnExportLocalizationFoundation
import MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.SignalRecognition

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure ExportAssayPackage {S : SignalRecognitionPackage} where
  nuclearExportStep : Prop
  cytoplasmDetection : Prop
  exportEfficiencyMeasurable : Prop
  kineticsModeled : Prop

structure ExportAssayEvidence {S : SignalRecognitionPackage}
    (Ea : ExportAssayPackage S) where
  nuclearExportStepClosed : Ea.nuclearExportStep
  cytoplasmDetectionClosed : Ea.cytoplasmDetection
  exportEfficiencyMeasurableClosed : Ea.exportEfficiencyMeasurable
  kineticsModeledClosed : Ea.kineticsModeled

def ExportAssayClosed {S : SignalRecognitionPackage} (Ea : ExportAssayPackage S) : Prop :=
  Ea.nuclearExportStep ∧ Ea.cytoplasmDetection ∧
  Ea.exportEfficiencyMeasurable ∧ Ea.kineticsModeled

theorem export_assay_closed_from_evidence
    {S : SignalRecognitionPackage} (Ea : ExportAssayPackage S)
    (E : ExportAssayEvidence Ea) : ExportAssayClosed Ea := by
  exact And.intro E.nuclearExportStepClosed
    (And.intro E.cytoplasmDetectionClosed
      (And.intro E.exportEfficiencyMeasurableClosed E.kineticsModeledClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse
