import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure AdmittedObject where
  transcript : RnaTranscript
  receptor : ExportReceptor
  complex : RnaExportComplex
  localizationResult : LocalizationResult
  complexStable : Prop
  transportFeasible : Prop
  complexStableTerm : complexStable
  transportFeasibleTerm : transportFeasible

def RnaExportWitnessClosed (O : AdmittedObject) : Prop :=
  O.complexStable ∧ O.transportFeasible

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse
