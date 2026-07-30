import .AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure Substrate where
  material : String
  orientation : String
  latticeConstant : Float

structure ThinFilm where
  material : String
  thickness : Float
  latticeMismatch : Float

structure EpitaxialGrowthCondition where
  substrate : Substrate
  thinFilm : ThinFilm
  misfitDislocations : Prop

structure EpitaxialGrowthEvidence (C : EpitaxialGrowthCondition) where
  misfitDislocationsClosed : C.misfitDislocations

def EpitaxialGrowthClosed (C : EpitaxialGrowthCondition) : Prop :=
  C.misfitDislocations

theorem epitaxial_growth_closed_from_evidence (C : EpitaxialGrowthCondition)
    (E : EpitaxialGrowthEvidence C) : EpitaxialGrowthClosed C := by
  exact E.misfitDislocationsClosed

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse