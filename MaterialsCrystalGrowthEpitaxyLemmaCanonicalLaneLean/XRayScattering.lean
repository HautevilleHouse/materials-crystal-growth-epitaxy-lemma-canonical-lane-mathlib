import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure XRayScatteringModel where
  crystalStructureFactor : Type u
  diffractionPattern : Type v
  braggAngle : Float
  wavelength : Float
  atomicScatteringFactor : List Float
  structureFactorComputed : Prop
  diffractionPatternResolved : Prop
  braggCondition : Prop
  structureFactorComputedTerm : structureFactorComputed
  diffractionPatternResolvedTerm : diffractionPatternResolved
  braggConditionTerm : braggCondition

structure XRayScatteringEvidence (M : XRayScatteringModel) where
  structureFactorComputedClosed : M.structureFactorComputed
  diffractionPatternResolvedClosed : M.diffractionPatternResolved
  braggConditionClosed : M.braggCondition

def XRayScatteringClosed (M : XRayScatteringModel) : Prop :=
  M.structureFactorComputed ∧ M.diffractionPatternResolved ∧ M.braggCondition

theorem xray_scattering_closed_from_evidence (M : XRayScatteringModel) (E : XRayScatteringEvidence M) :
    XRayScatteringClosed M := by
  exact And.intro E.structureFactorComputedClosed
    (And.intro E.diffractionPatternResolvedClosed E.braggConditionClosed)

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse