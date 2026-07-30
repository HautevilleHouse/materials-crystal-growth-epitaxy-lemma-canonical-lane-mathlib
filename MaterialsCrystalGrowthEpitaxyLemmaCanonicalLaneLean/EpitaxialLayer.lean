import canonicalLaneMathlib.AdmissibleClass
import MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean.CrystalMathlibObjects

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure EpitaxialLayerPackage where
  substrate : CrystalSpace
  film : CrystalSpace
  latticeMismatch : Prop
  strainRelaxation : Prop
  layerThickness : Prop

def EpitaxialLayerClosed (E : EpitaxialLayerPackage) : Prop :=
  E.latticeMismatch ∧ E.strainRelaxation ∧ E.layerThickness

theorem epitaxial_layer_closed (E : EpitaxialLayerPackage) : EpitaxialLayerClosed E :=
  And.intro E.latticeMismatch (And.intro E.strainRelaxation E.layerThickness)

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse