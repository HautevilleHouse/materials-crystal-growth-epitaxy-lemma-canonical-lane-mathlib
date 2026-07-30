import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLatticeType : Prop
  spaceGroupSymmetry : Prop
  atomicBasis : Prop
  unitCellVolume : Prop
  coordinationNumber : Prop
  bravaisLatticeTypeClosed : bravaisLatticeType
  spaceGroupSymmetryClosed : spaceGroupSymmetry
  atomicBasisClosed : atomicBasis
  unitCellVolumeClosed : unitCellVolume
  coordinationNumberClosed : coordinationNumber

structure CrystalStructureEvidence (P : CrystalStructurePackage) where
  bravaisLatticeTypeClosed : P.bravaisLatticeType
  spaceGroupSymmetryClosed : P.spaceGroupSymmetry
  atomicBasisClosed : P.atomicBasis
  unitCellVolumeClosed : P.unitCellVolume
  coordinationNumberClosed : P.coordinationNumber

def CrystalStructureClosed (P : CrystalStructurePackage) : Prop :=
  P.bravaisLatticeType ∧ P.spaceGroupSymmetry ∧ P.atomicBasis ∧ P.unitCellVolume ∧ P.coordinationNumber

theorem crystal_structure_closed_from_evidence (P : CrystalStructurePackage) (E : CrystalStructureEvidence P) :
    CrystalStructureClosed P := by
  exact And.intro E.bravaisLatticeTypeClosed (And.intro E.spaceGroupSymmetryClosed (And.intro E.atomicBasisClosed (And.intro E.unitCellVolumeClosed E.coordinationNumberClosed)))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse