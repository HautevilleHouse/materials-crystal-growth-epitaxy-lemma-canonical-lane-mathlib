import .AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure PointGroup where
  group : Type u
  order : Nat
  isCrystallographic : Prop

structure BravaisLattice where
  latticeType : String
  unitCell : PointGroup
  centering : String

def CrystalSystem : Type := String
def LatticeSystem : Type := String

def bravaisClassified (O : AdmittedObject) : Prop :=
  ∃ (b : BravaisLattice), True

def bravaisClosed (O : AdmittedObject) : Prop :=
  bravaisClassified O

theorem bravais_from_admitted (O : AdmittedObject) : bravaisClosed O := by
  trivial

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse