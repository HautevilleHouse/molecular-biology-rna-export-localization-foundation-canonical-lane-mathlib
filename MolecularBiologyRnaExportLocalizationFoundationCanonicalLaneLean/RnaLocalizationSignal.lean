import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaLocalizationSignal where
  signalSequence : Type u
  RnaBindingProtein : Type v
  signalRecognition : Prop
  localizationPathway : Prop
  signalCytoplasmic : Prop

structure RnaLocalizationSignalEvidence (S : RnaLocalizationSignal) where
  signalRecognitionClosed : S.signalRecognition
  localizationPathwayClosed : S.localizationPathway
  signalCytoplasmicClosed : S.signalCytoplasmic

def RnaLocalizationSignalClosed (S : RnaLocalizationSignal) : Prop :=
  S.signalRecognition ∧ S.localizationPathway ∧ S.signalCytoplasmic

theorem rna_localization_signal_closed_from_evidence
    (S : RnaLocalizationSignal) (E : RnaLocalizationSignalEvidence S) :
    RnaLocalizationSignalClosed S := by
  exact And.intro E.signalRecognitionClosed
    (And.intro E.localizationPathwayClosed E.signalCytoplasmicClosed)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse