import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalAdmittedObject where
  lattice : CrystalLatticeType
  surface : CrystalSurfaceType
  epitaxialLayer : EpitaxialLayerType
  growthCondition : GrowthConditionType
  conclusion : CrystalWitnessClosed (AdmittedObject.mk lattice surface epitaxialLayer growthCondition)

def CrystalWitnessClosed (O : CrystalAdmittedObject) : Prop :=
  O.growthCondition.epitaxyPossible

structure AdmittedObject where
  lattice : CrystalLatticeType
  surface : CrystalSurfaceType
  epitaxialLayer : EpitaxialLayerType
  growthCondition : GrowthConditionType

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse