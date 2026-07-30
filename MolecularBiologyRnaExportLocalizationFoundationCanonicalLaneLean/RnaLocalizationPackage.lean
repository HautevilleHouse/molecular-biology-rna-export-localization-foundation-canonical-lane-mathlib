import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaLocalizationPackage where
  cytoplasmicTransport : Prop
  localTranslation : Prop
  anchoringMechanisms : Prop
  spatialOrganization : Prop

structure RnaLocalizationEvidence (L : RnaLocalizationPackage) where
  cytoplasmicTransportClosed : L.cytoplasmicTransport
  localTranslationClosed : L.localTranslation
  anchoringMechanismsClosed : L.anchoringMechanisms
  spatialOrganizationClosed : L.spatialOrganization

def RnaLocalizationClosed (L : RnaLocalizationPackage) : Prop :=
  L.cytoplasmicTransport ∧ L.localTranslation ∧
  L.anchoringMechanisms ∧ L.spatialOrganization

theorem rna_localization_closed_from_evidence
    (L : RnaLocalizationPackage) (E : RnaLocalizationEvidence L) :
    RnaLocalizationClosed L := by
  exact And.intro E.cytoplasmicTransportClosed
    (And.intro E.localTranslationClosed
      (And.intro E.anchoringMechanismsClosed E.spatialOrganizationClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse