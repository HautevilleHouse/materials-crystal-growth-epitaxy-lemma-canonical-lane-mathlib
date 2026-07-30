import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalLatticeStructurePackage where
  bravaisLatticeType : String
  latticeParameters : LatticeParameterType
  spaceGroup : SpaceGroupType
  atomicPositions : AtomicPositionsType
  symmetryOperations : SymmetryOperationsType

def CrystalLatticeStructureClosed (P : CrystalLatticeStructurePackage) : Prop :=
  P.bravaisLatticeType ∈ {"cubic","tetragonal","orthorhombic","hexagonal","trigonal","monoclinic","triclinic"} ∧
  P.latticeParameters.parametersPositive ∧
  P.spaceGroup.number ≤ 230 ∧
  P.atomicPositions.fractionalCoordinatesConsistent ∧
  P.symmetryOperations.operationsClosedUnderComposition

theorem crystal_lattice_structure_closed (P : CrystalLatticeStructurePackage) : CrystalLatticeStructureClosed P := by
  exact And.intro (by
    have h : P.bravaisLatticeType ∈ {"cubic","tetragonal","orthorhombic","hexagonal","trigonal","monoclinic","triclinic"} := P.bravaisLatticeTypeTerm
    exact h)
    (And.intro P.latticeParameters.parametersPositiveTerm
      (And.intro P.spaceGroup.numberTerm
        (And.intro P.atomicPositions.fractionalCoordinatesConsistentTerm
          P.symmetryOperations.operationsClosedUnderCompositionTerm)))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse