import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportLocalizationPackage where
  nuclearPoreComplex : Type u
  exportReceptor : Type v
  rnaCargo : Type w
  localizationSignal : Prop
  nuclearRetention : Prop
  cytoplasmicAccumulation : Prop

structure RnaExportLocalizationEvidence (P : RnaExportLocalizationPackage) where
  localizationSignalClosed : P.localizationSignal
  nuclearRetentionClosed : P.nuclearRetention
  cytoplasmicAccumulationClosed : P.cytoplasmicAccumulation

def RnaExportLocalizationClosed (P : RnaExportLocalizationPackage) : Prop :=
  P.localizationSignal ∧ P.nuclearRetention ∧ P.cytoplasmicAccumulation

theorem rna_export_localization_closed_from_evidence
    (P : RnaExportLocalizationPackage) (E : RnaExportLocalizationEvidence P) :
    RnaExportLocalizationClosed P := by
  exact And.intro E.localizationSignalClosed
    (And.intro E.nuclearRetentionClosed E.cytoplasmicAccumulationClosed)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse