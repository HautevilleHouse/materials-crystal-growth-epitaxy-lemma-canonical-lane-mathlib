import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure QuasicrystalModel where
  higherDimensionalLattice : Type u
  cutProjectionMethod : Prop
  diffractionSymmetry : String
  forbiddenRotationalSymmetry : Nat

structure QuasicrystalDiffractionPackage (A : AdmissibleClass) where
  model : QuasicrystalModel
  diffractionPatternComputed : Prop
  penroseTilingRepresentation : Prop

structure QuasicrystalDiffractionEvidence (A : AdmissibleClass) (P : QuasicrystalDiffractionPackage A) where
  diffractionPatternComputedClosed : P.diffractionPatternComputed
  penroseTilingRepresentationClosed : P.penroseTilingRepresentation

def QuasicrystalDiffractionClosed (A : AdmissibleClass) (P : QuasicrystalDiffractionPackage A) : Prop :=
  P.diffractionPatternComputed ∧ P.penroseTilingRepresentation

theorem quasicrystal_diffraction_closed_from_evidence (A : AdmissibleClass) (P : QuasicrystalDiffractionPackage A) (E : QuasicrystalDiffractionEvidence A P) : QuasicrystalDiffractionClosed A P := by
  exact And.intro E.diffractionPatternComputedClosed E.penroseTilingRepresentationClosed

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse