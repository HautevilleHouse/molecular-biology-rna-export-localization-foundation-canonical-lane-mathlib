import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportCargoComplex where
  cargoRna : Type u
  exportReceptor : Type v
  nuclearPoreBinding : Prop
  cargoRecognition : Prop
  complexAssembly : Prop
  complexDisassembly : Prop

structure RnaExportCargoComplexEvidence (C : RnaExportCargoComplex) where
  nuclearPoreBindingClosed : C.nuclearPoreBinding
  cargoRecognitionClosed : C.cargoRecognition
  complexAssemblyClosed : C.complexAssembly
  complexDisassemblyClosed : C.complexDisassembly

def RnaExportCargoComplexClosed (C : RnaExportCargoComplex) : Prop :=
  C.nuclearPoreBinding ∧ C.cargoRecognition ∧ C.complexAssembly ∧ C.complexDisassembly

theorem rna_export_cargo_complex_closed_from_evidence
    (C : RnaExportCargoComplex) (E : RnaExportCargoComplexEvidence C) :
    RnaExportCargoComplexClosed C := by
  exact And.intro E.nuclearPoreBindingClosed
    (And.intro E.cargoRecognitionClosed
      (And.intro E.complexAssemblyClosed E.complexDisassemblyClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse