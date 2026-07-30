import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure NuclearPoreDynamicsPackage where
  poreComplexComponents : Type u
  transportCycle : Type v
  gatingMechanism : Prop
  energyDependence : Prop
  cargoSelectivity : Prop

structure NuclearPoreDynamicsEvidence (P : NuclearPoreDynamicsPackage) where
  gatingMechanismClosed : P.gatingMechanism
  energyDependenceClosed : P.energyDependence
  cargoSelectivityClosed : P.cargoSelectivity

def NuclearPoreDynamicsClosed (P : NuclearPoreDynamicsPackage) : Prop :=
  P.gatingMechanism ∧ P.energyDependence ∧ P.cargoSelectivity

theorem nuclear_pore_dynamics_closed_from_evidence
    (P : NuclearPoreDynamicsPackage) (E : NuclearPoreDynamicsEvidence P) :
    NuclearPoreDynamicsClosed P := by
  exact And.intro E.gatingMechanismClosed
    (And.intro E.energyDependenceClosed E.cargoSelectivityClosed)

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse