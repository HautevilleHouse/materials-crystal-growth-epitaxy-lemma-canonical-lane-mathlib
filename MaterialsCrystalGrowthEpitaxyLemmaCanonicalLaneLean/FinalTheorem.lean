import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

def ConstrainedEpitaxyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epitaxy_endgame (A : AdmissibleClass) :
    ConstrainedEpitaxyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse