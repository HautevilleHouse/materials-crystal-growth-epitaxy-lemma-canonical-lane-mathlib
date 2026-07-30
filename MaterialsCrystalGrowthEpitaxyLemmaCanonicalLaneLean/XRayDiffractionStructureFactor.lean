import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure XRayDiffractionPattern where
  incidentBeam : Type u
  scatteredIntensity : Type v
  braggAngles : List Float
  structureFactors : List Complex

structure XRayDiffractionPackage (A : AdmissibleClass) where
  diffractionPattern : XRayDiffractionPattern
  structureFactorFormula : Prop
  phaseProblemSolution : Prop

structure XRayDiffractionEvidence (A : AdmissibleClass) (P : XRayDiffractionPackage A) where
  structureFactorFormulaClosed : P.structureFactorFormula
  phaseProblemSolutionClosed : P.phaseProblemSolution

def XRayDiffractionClosed (A : AdmissibleClass) (P : XRayDiffractionPackage A) : Prop :=
  P.structureFactorFormula ∧ P.phaseProblemSolution

theorem xray_diffraction_closed_from_evidence (A : AdmissibleClass) (P : XRayDiffractionPackage A) (E : XRayDiffractionEvidence A P) : XRayDiffractionClosed A P := by
  exact And.intro E.structureFactorFormulaClosed E.phaseProblemSolutionClosed

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse