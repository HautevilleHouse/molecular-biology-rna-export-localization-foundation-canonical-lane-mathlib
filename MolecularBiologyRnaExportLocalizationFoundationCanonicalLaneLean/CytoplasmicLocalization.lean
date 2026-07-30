import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure CytoplasmicLocalization where
  cytoplasmicCompartment : Type u
  anchoringFactor : Type v
  localizationStability : Prop
  mrnaAnchoring : Prop
  localTranslation : Prop

structure CytoplasmicLocalizationEvidence (L : CytoplasmicLocalization) where
  localizationStabilityClosed : L.localizationStability
  mrnaAnchoringClosed : L.mrnaAnchoring
  localTranslationClosed : L.localTranslation

def CytoplasmicLocalizationClosed (L : CytoplasmicLocalization) : Prop :=
  L.localizationStability ∧ L.mrnaAnchoring ∧ L.localTranslation

theorem cytoplasmic_localization_closed_from_evidence
    (L : CytoplasmicLocalization) (E : CytoplasmicLocalizationEvidence L) :
    CytoplasmicLocalizationClosed L := by
  exact And.intro E.localizationStabilityClosed
    (And.intro E.mrnaAnchoringClosed E.localTranslationClosed)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse