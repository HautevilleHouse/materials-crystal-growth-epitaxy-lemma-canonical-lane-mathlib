import canonicalLaneMathlib.AdmissibleClass
import MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean.CrystalMathlibObjects

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure EpitaxyLemmaPackage where
  substrateCondition : Prop
  filmOrientation : Prop
  latticeMatchCondition : Prop
  growthCondition : Prop
  conclusion : Prop

def EpitaxyLemmaClosed (E : EpitaxyLemmaPackage) : Prop :=
  E.substrateCondition ∧ E.filmOrientation ∧ E.latticeMatchCondition ∧ E.growthCondition ∧ E.conclusion

theorem epitaxy_lemma_closed (E : EpitaxyLemmaPackage) : EpitaxyLemmaClosed E :=
  And.intro E.substrateCondition (And.intro E.filmOrientation (And.intro E.latticeMatchCondition (And.intro E.growthCondition E.conclusion)))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse