import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean

structure NuclearPoreComplexPackage where
  nuclearPoreComplex : Type u
  nucleoporinSet : Type v
  centralChannel : Type w
  transportReceptors : Type x
  rnaExportProteins : Type y
  channelArchitecture : Prop
  receptorBindingSites : Prop
  rnaCargoDocking : Prop
  channelGatingRegulation : Prop
  channelArchitectureClosed : channelArchitecture
  receptorBindingSitesClosed : receptorBindingSites
  rnaCargoDockingClosed : rnaCargoDocking
  channelGatingRegulationClosed : channelGatingRegulation

structure NuclearPoreComplexEvidence (N : NuclearPoreComplexPackage) where
  channelArchitectureClosed : N.channelArchitecture
  receptorBindingSitesClosed : N.receptorBindingSites
  rnaCargoDockingClosed : N.rnaCargoDocking
  channelGatingRegulationClosed : N.channelGatingRegulation

def NuclearPoreComplexClosed (N : NuclearPoreComplexPackage) : Prop :=
  N.channelArchitecture ∧ N.receptorBindingSites ∧ N.rnaCargoDocking ∧ N.channelGatingRegulation

theorem nuclear_pore_complex_closed_from_evidence
    (N : NuclearPoreComplexPackage) (E : NuclearPoreComplexEvidence N) :
    NuclearPoreComplexClosed N := by
  exact And.intro E.channelArchitectureClosed
    (And.intro E.receptorBindingSitesClosed
      (And.intro E.rnaCargoDockingClosed E.channelGatingRegulationClosed))

end MolecularBiologyRnaExportLocalizationFoundationCanonicalLaneLean
end HautevilleHouse