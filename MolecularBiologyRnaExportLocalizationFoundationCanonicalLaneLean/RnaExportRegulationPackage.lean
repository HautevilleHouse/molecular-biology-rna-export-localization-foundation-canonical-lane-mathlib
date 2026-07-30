import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportRegulationPackage where
  transcriptionRegulation : Prop
  splicingRegulation : Prop
  exportFactorRecruitment : Prop
  postTranscriptionalModifications : Prop

structure RnaExportRegulationEvidence (R : RnaExportRegulationPackage) where
  transcriptionRegulationClosed : R.transcriptionRegulation
  splicingRegulationClosed : R.splicingRegulation
  exportFactorRecruitmentClosed : R.exportFactorRecruitment
  postTranscriptionalModificationsClosed : R.postTranscriptionalModifications

def RnaExportRegulationClosed (R : RnaExportRegulationPackage) : Prop :=
  R.transcriptionRegulation ∧ R.splicingRegulation ∧
  R.exportFactorRecruitment ∧ R.postTranscriptionalModifications

theorem rna_export_regulation_closed_from_evidence
    (R : RnaExportRegulationPackage) (E : RnaExportRegulationEvidence R) :
    RnaExportRegulationClosed R := by
  exact And.intro E.transcriptionRegulationClosed
    (And.intro E.splicingRegulationClosed
      (And.intro E.exportFactorRecruitmentClosed E.postTranscriptionalModificationsClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse