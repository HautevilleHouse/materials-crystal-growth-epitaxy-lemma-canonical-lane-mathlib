import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalAdmittedObject where
  substrate : Type
  topology : TopologicalSpace substrate
  threeDimensional : Prop
  latticeStructure : Prop
  surfaceTermination : Prop
  conclusion : latticeStructure ∧ surfaceTermination

structure AdmissibleClass where
  object : CrystalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse