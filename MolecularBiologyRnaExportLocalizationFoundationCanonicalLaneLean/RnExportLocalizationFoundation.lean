import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportAdmittedObject where
  carrier : Type
  localizationSignal : carrier → Prop
  exportCompetence : Prop
  conclusion : exportCompetence

def rnaExportWitnessClosed (O : RnaExportAdmittedObject) : Prop :=
  O.exportCompetence

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse
