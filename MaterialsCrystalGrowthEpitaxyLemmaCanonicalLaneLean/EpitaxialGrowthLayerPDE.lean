import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure EpitaxialGrowthModel (A : AdmissibleClass) where
  substrate : Type u
  substrateTopology : TopologicalSpace substrate
  adatomDensity : Type v
  diffusionCoefficient : Type w
  surfaceCurrent : Type x
  depositionFlux : Type y
  growthEquation : Prop
  boundaryConditions : Prop
  initialCondition : Prop

structure EpitaxialGrowthEvidence (A : AdmissibleClass) (M : EpitaxialGrowthModel A) where
  growthEquationClosed : M.growthEquation
  boundaryConditionsClosed : M.boundaryConditions
  initialConditionClosed : M.initialCondition

def EpitaxialGrowthModelClosed (A : AdmissibleClass) (M : EpitaxialGrowthModel A) : Prop :=
  M.growthEquation ∧ M.boundaryConditions ∧ M.initialCondition

theorem epitaxial_growth_closed_from_evidence (A : AdmissibleClass) (M : EpitaxialGrowthModel A) (E : EpitaxialGrowthEvidence A M) : EpitaxialGrowthModelClosed A M := by
  exact And.intro E.growthEquationClosed (And.intro E.boundaryConditionsClosed E.initialConditionClosed)

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse