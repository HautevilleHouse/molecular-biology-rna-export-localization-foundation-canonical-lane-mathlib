import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure ExportReceptorRecruitment where
  exportinFamily : Type u
  adaptorProtein : Type v
  receptorCargoInteraction : Prop
  adaptorMediatedRecruitment : Prop
  competitiveInhibition : Prop

structure ExportReceptorRecruitmentEvidence (R : ExportReceptorRecruitment) where
  receptorCargoInteractionClosed : R.receptorCargoInteraction
  adaptorMediatedRecruitmentClosed : R.adaptorMediatedRecruitment
  competitiveInhibitionClosed : R.competitiveInhibition

def ExportReceptorRecruitmentClosed (R : ExportReceptorRecruitment) : Prop :=
  R.receptorCargoInteraction ∧ R.adaptorMediatedRecruitment ∧ R.competitiveInhibition

theorem export_receptor_recruitment_closed_from_evidence
    (R : ExportReceptorRecruitment) (E : ExportReceptorRecruitmentEvidence R) :
    ExportReceptorRecruitmentClosed R := by
  exact And.intro E.receptorCargoInteractionClosed
    (And.intro E.adaptorMediatedRecruitmentClosed E.competitiveInhibitionClosed)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse