import MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.ExportAssay

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure LocalizationDynamicsPackage {S : SignalRecognitionPackage}
    {Ea : ExportAssayPackage S} where
  spatialProfile : Prop
  timeCourseResolved : Prop
  compartmentSpecificity : Prop
  turnoverModel : Prop

structure LocalizationDynamicsEvidence {S : SignalRecognitionPackage}
    {Ea : ExportAssayPackage S} (L : LocalizationDynamicsPackage Ea) where
  spatialProfileClosed : L.spatialProfile
  timeCourseResolvedClosed : L.timeCourseResolved
  compartmentSpecificityClosed : L.compartmentSpecificity
  turnoverModelClosed : L.turnoverModel

def LocalizationDynamicsClosed {S : SignalRecognitionPackage}
    {Ea : ExportAssayPackage S} (L : LocalizationDynamicsPackage Ea) : Prop :=
  L.spatialProfile ∧ L.timeCourseResolved ∧
  L.compartmentSpecificity ∧ L.turnoverModel

theorem localization_dynamics_closed_from_evidence
    {S : SignalRecognitionPackage} {Ea : ExportAssayPackage S}
    (L : LocalizationDynamicsPackage Ea) (E : LocalizationDynamicsEvidence L) :
    LocalizationDynamicsClosed L := by
  exact And.intro E.spatialProfileClosed
    (And.intro E.timeCourseResolvedClosed
      (And.intro E.compartmentSpecificityClosed E.turnoverModelClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse
