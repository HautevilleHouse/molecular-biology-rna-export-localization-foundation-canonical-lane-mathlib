import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportDysregulationPackage where
  diseaseContext : Prop
  exportDefect : Prop
  mislocalization : Prop
  pathologicalConsequence : Prop

structure RnaExportDysregulationEvidence (D : RnaExportDysregulationPackage) where
  diseaseContextClosed : D.diseaseContext
  exportDefectClosed : D.exportDefect
  mislocalizationClosed : D.mislocalization
  pathologicalConsequenceClosed : D.pathologicalConsequence

def RnaExportDysregulationClosed (D : RnaExportDysregulationPackage) : Prop :=
  D.diseaseContext ∧ D.exportDefect ∧ D.mislocalization ∧ D.pathologicalConsequence

theorem rna_export_dysregulation_closed_from_evidence
    (D : RnaExportDysregulationPackage) (E : RnaExportDysregulationEvidence D) :
    RnaExportDysregulationClosed D := by
  exact And.intro E.diseaseContextClosed
    (And.intro E.exportDefectClosed
      (And.intro E.mislocalizationClosed E.pathologicalConsequenceClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse