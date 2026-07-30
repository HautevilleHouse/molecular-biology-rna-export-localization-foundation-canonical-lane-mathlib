import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportPathwayPackage where
  nuclearPoreComplex : Type u
  exportReceptors : Type v
  rnaCargo : Type w
  cargoRecognition : Prop
  receptorBinding : Prop
  translocation : Prop
  cargoRelease : Prop

structure RnaExportPathwayEvidence (P : RnaExportPathwayPackage) where
  cargoRecognitionClosed : P.cargoRecognition
  receptorBindingClosed : P.receptorBinding
  translocationClosed : P.translocation
  cargoReleaseClosed : P.cargoRelease

def RnaExportPathwayClosed (P : RnaExportPathwayPackage) : Prop :=
  P.cargoRecognition ∧ P.receptorBinding ∧ P.translocation ∧ P.cargoRelease

theorem rna_export_pathway_closed_from_evidence
    (P : RnaExportPathwayPackage) (E : RnaExportPathwayEvidence P) :
    RnaExportPathwayClosed P := by
  exact And.intro E.cargoRecognitionClosed
    (And.intro E.receptorBindingClosed
      (And.intro E.translocationClosed E.cargoReleaseClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse