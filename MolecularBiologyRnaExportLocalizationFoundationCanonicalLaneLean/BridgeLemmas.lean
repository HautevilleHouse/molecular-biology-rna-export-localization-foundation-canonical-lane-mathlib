import MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  rnaExportWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse
