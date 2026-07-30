import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CrystalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CrystalAdmittedObject where
  space : CrystalSpace
  threeDimensional : Prop
  latticeStructure : Prop
  surfaceTermination : Prop
  conclusion : latticeStructure ∧ surfaceTermination

structure CrystalEndgameState where
  object : CrystalAdmittedObject

def CrystalWitnessClosed (O : CrystalAdmittedObject) : Prop :=
  O.latticeStructure ∧ O.surfaceTermination

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse