import canonicalLaneMathlib.AdmissibleClass
import MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean.CrystalMathlibObjects

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalGrowthDynamicsPackage where
  nucleationRate : Prop
  stepFlowGrowth : Prop
  surfaceDiffusion : Prop
  defectFormation : Prop

def CrystalGrowthDynamicsClosed (D : CrystalGrowthDynamicsPackage) : Prop :=
  D.nucleationRate ∧ D.stepFlowGrowth ∧ D.surfaceDiffusion ∧ D.defectFormation

theorem crystal_growth_dynamics_closed (D : CrystalGrowthDynamicsPackage) : CrystalGrowthDynamicsClosed D :=
  And.intro D.nucleationRate (And.intro D.stepFlowGrowth (And.intro D.surfaceDiffusion D.defectFormation))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse