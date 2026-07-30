import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure EpitaxialGrowthDynamicsPackage where
  substrateSurface : Prop
  adatomDiffusion : Prop
  nucleationRate : Prop
  stepFlowGrowth : Prop
  misfitStrain : Prop
  substrateSurfaceClosed : substrateSurface
  adatomDiffusionClosed : adatomDiffusion
  nucleationRateClosed : nucleationRate
  stepFlowGrowthClosed : stepFlowGrowth
  misfitStrainClosed : misfitStrain

structure EpitaxialGrowthDynamicsEvidence (G : EpitaxialGrowthDynamicsPackage) where
  substrateSurfaceClosed : G.substrateSurface
  adatomDiffusionClosed : G.adatomDiffusion
  nucleationRateClosed : G.nucleationRate
  stepFlowGrowthClosed : G.stepFlowGrowth
  misfitStrainClosed : G.misfitStrain

def EpitaxialGrowthDynamicsClosed (G : EpitaxialGrowthDynamicsPackage) : Prop :=
  G.substrateSurface ∧ G.adatomDiffusion ∧ G.nucleationRate ∧ G.stepFlowGrowth ∧ G.misfitStrain

theorem epitaxial_growth_dynamics_closed_from_evidence
    (G : EpitaxialGrowthDynamicsPackage) (E : EpitaxialGrowthDynamicsEvidence G) :
    EpitaxialGrowthDynamicsClosed G := by
  exact And.intro E.substrateSurfaceClosed (And.intro E.adatomDiffusionClosed (And.intro E.nucleationRateClosed (And.intro E.stepFlowGrowthClosed E.misfitStrainClosed)))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse