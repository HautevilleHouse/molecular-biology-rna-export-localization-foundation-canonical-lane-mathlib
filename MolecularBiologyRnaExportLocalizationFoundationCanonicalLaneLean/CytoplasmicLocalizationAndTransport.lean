import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure CytoplasmicLocalizationAndTransportPackage where
  cytoplasmicTransportFactors : Type u
  localizationSignals : Type v
  motorProteins : Type w
  cytoskeletalTrack : Type x
  transportDirectionality : Prop
  cargoReleaseCytoplasmic : Prop
  localTranslationActivation : Prop
  transportDirectionalityClosed : transportDirectionality
  cargoReleaseCytoplasmicClosed : cargoReleaseCytoplasmic
  localTranslationActivationClosed : localTranslationActivation

structure CytoplasmicLocalizationAndTransportEvidence (C : CytoplasmicLocalizationAndTransportPackage) where
  transportDirectionalityClosed : C.transportDirectionality
  cargoReleaseCytoplasmicClosed : C.cargoReleaseCytoplasmic
  localTranslationActivationClosed : C.localTranslationActivation

def CytoplasmicLocalizationAndTransportClosed (C : CytoplasmicLocalizationAndTransportPackage) : Prop :=
  C.transportDirectionality ∧ C.cargoReleaseCytoplasmic ∧ C.localTranslationActivation

theorem cytoplasmic_localization_and_transport_closed_from_evidence
    (C : CytoplasmicLocalizationAndTransportPackage) (E : CytoplasmicLocalizationAndTransportEvidence C) :
    CytoplasmicLocalizationAndTransportClosed C := by
  exact And.intro E.transportDirectionalityClosed
    (And.intro E.cargoReleaseCytoplasmicClosed E.localTranslationActivationClosed)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse