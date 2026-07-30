import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

struct ExportinRanCyclePackage where
  exportinFamily : Type u
  ranGtpase : Type v
  ranGef : Type w
  ranGap : Type x
  ranGtpBound : Prop
  ranGdpBound : Prop
  exportinConformationalChange : Prop
  cargoReleaseNuclear : Prop
  ranGtpBoundClosed : ranGtpBound
  ranGdpBoundClosed : ranGdpBound
  exportinConformationalChangeClosed : exportinConformationalChange
  cargoReleaseNuclearClosed : cargoReleaseNuclear

struct ExportinRanCycleEvidence (R : ExportinRanCyclePackage) where
  ranGtpBoundClosed : R.ranGtpBound
  ranGdpBoundClosed : R.ranGdpBound
  exportinConformationalChangeClosed : R.exportinConformationalChange
  cargoReleaseNuclearClosed : R.cargoReleaseNuclear

def ExportinRanCycleClosed (R : ExportinRanCyclePackage) : Prop :=
  R.ranGtpBound ∧ R.ranGdpBound ∧ R.exportinConformationalChange ∧ R.cargoReleaseNuclear

theorem exportin_ran_cycle_closed_from_evidence
    (R : ExportinRanCyclePackage) (E : ExportinRanCycleEvidence R) :
    ExportinRanCycleClosed R := by
  exact And.intro E.ranGtpBoundClosed
    (And.intro E.ranGdpBoundClosed
      (And.intro E.exportinConformationalChangeClosed E.cargoReleaseNuclearClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse