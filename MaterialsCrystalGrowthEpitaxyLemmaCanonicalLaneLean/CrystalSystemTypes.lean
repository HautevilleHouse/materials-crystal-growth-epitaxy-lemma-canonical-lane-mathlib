import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalSystem where
  latticeType : String
  spaceGroup : String
  bravaisLattice : String
  pointGroup : String
  symmetries : List String
  primitiveVectors : List (Float × Float × Float)
  isBravaisLattice : Prop
  hasValidSymmetry : Prop
  symmetryOperationsClosed : Prop
  isBravaisLatticeTerm : isBravaisLattice
  hasValidSymmetryTerm : hasValidSymmetry
  symmetryOperationsClosedTerm : symmetryOperationsClosed

structure CrystalSystemEvidence (C : CrystalSystem) where
  isBravaisLatticeClosed : C.isBravaisLattice
  hasValidSymmetryClosed : C.hasValidSymmetry
  symmetryOperationsClosedClosed : C.symmetryOperationsClosed

def CrystalSystemClosed (C : CrystalSystem) : Prop :=
  C.isBravaisLattice ∧ C.hasValidSymmetry ∧ C.symmetryOperationsClosed

theorem crystal_system_closed_from_evidence (C : CrystalSystem) (E : CrystalSystemEvidence C) :
    CrystalSystemClosed C := by
  exact And.intro E.isBravaisLatticeClosed
    (And.intro E.hasValidSymmetryClosed E.symmetryOperationsClosedClosed)

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse