import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportSignalRecognitionPackage where
  rnaExportSignal : Type u
  adapterProteins : Type v
  recognitionComplex : Type w
  signalBindingSpecificity : Prop
  adaptorRecruitment : Prop
  signalBindingSpecificityClosed : signalBindingSpecificity
  adaptorRecruitmentClosed : adaptorRecruitment

structure RnaExportSignalRecognitionEvidence (S : RnaExportSignalRecognitionPackage) where
  signalBindingSpecificityClosed : S.signalBindingSpecificity
  adaptorRecruitmentClosed : S.adaptorRecruitment

def RnaExportSignalRecognitionClosed (S : RnaExportSignalRecognitionPackage) : Prop :=
  S.signalBindingSpecificity ∧ S.adaptorRecruitment

theorem rna_export_signal_recognition_closed_from_evidence
    (S : RnaExportSignalRecognitionPackage) (E : RnaExportSignalRecognitionEvidence S) :
    RnaExportSignalRecognitionClosed S := by
  exact And.intro E.signalBindingSpecificityClosed E.adaptorRecruitmentClosed

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse