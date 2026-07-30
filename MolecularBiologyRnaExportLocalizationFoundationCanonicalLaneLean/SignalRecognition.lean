import MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.RnExportLocalizationFoundation

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure SignalRecognitionPackage where
  rnaSequence : Type
  localizationMotif : rnaSequence → Prop
  motifConservation : Prop
  bindingProtein : Prop
  exportSignalCompetent : Prop

structure SignalRecognitionEvidence (S : SignalRecognitionPackage) where
  motifConservationClosed : S.motifConservation
  bindingProteinClosed : S.bindingProtein
  exportSignalCompetentClosed : S.exportSignalCompetent

def SignalRecognitionClosed (S : SignalRecognitionPackage) : Prop :=
  S.motifConservation ∧ S.bindingProtein ∧ S.exportSignalCompetent

theorem signal_recognition_closed_from_evidence
    (S : SignalRecognitionPackage) (E : SignalRecognitionEvidence S) :
    SignalRecognitionClosed S := by
  exact And.intro E.motifConservationClosed
    (And.intro E.bindingProteinClosed E.exportSignalCompetentClosed)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse
