import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure RnaExportSystemsBiologyPackage where
  kineticModel : Prop
  stochasticSimulation : Prop
  networkInteractions : Prop
  predictiveModeling : Prop

structure RnaExportSystemsBiologyEvidence (S : RnaExportSystemsBiologyPackage) where
  kineticModelClosed : S.kineticModel
  stochasticSimulationClosed : S.stochasticSimulation
  networkInteractionsClosed : S.networkInteractions
  predictiveModelingClosed : S.predictiveModeling

def RnaExportSystemsBiologyClosed (S : RnaExportSystemsBiologyPackage) : Prop :=
  S.kineticModel ∧ S.stochasticSimulation ∧
  S.networkInteractions ∧ S.predictiveModeling

theorem rna_export_systems_biology_closed_from_evidence
    (S : RnaExportSystemsBiologyPackage) (E : RnaExportSystemsBiologyEvidence S) :
    RnaExportSystemsBiologyClosed S := by
  exact And.intro E.kineticModelClosed
    (And.intro E.stochasticSimulationClosed
      (And.intro E.networkInteractionsClosed E.predictiveModelingClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse