import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaTranscript where
  sequence : String
  length : Nat
  localizationSignal : String

structure ExportReceptor where
  name : String
  bindingAffinity : Float
  localizationDomain : String

structure RnaExportComplex where
  transcript : RnaTranscript
  receptor : ExportReceptor
  formationEnergy : Float
  complexStable : Prop

def RnaExportComplexStable (C : RnaExportComplex) : Prop :=
  C.complexStable

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse
