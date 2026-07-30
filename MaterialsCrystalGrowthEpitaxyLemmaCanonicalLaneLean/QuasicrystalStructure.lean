import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure QuasicrystalModel where
  aperiodicOrder : Type u
  penroseTilingSeed : Type v
  diffractionPeaks : List Float
  forbiddenSymmetryAxis : Nat
  isAperiodic : Prop
  hasPenroseSeed : Prop
  diffractionPatternMatches : Prop
  isAperiodicTerm : isAperiodic
  hasPenroseSeedTerm : hasPenroseSeed
  diffractionPatternMatchesTerm : diffractionPatternMatches

structure QuasicrystalEvidence (Q : QuasicrystalModel) where
  isAperiodicClosed : Q.isAperiodic
  hasPenroseSeedClosed : Q.hasPenroseSeed
  diffractionPatternMatchesClosed : Q.diffractionPatternMatches

def QuasicrystalClosed (Q : QuasicrystalModel) : Prop :=
  Q.isAperiodic ∧ Q.hasPenroseSeed ∧ Q.diffractionPatternMatches

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalModel) (E : QuasicrystalEvidence Q) :
    QuasicrystalClosed Q := by
  exact And.intro E.isAperiodicClosed
    (And.intro E.hasPenroseSeedClosed E.diffractionPatternMatchesClosed)

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse