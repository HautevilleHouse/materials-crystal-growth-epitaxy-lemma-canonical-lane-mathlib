import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure XRayDiffractionPatternPackage where
  braggAngle : Prop
  peakIntensity : Prop
  fwhm : Prop
  latticeParameter : Prop
  crystalliteSize : Prop
  braggAngleClosed : braggAngle
  peakIntensityClosed : peakIntensity
  fwhmClosed : fwhm
  latticeParameterClosed : latticeParameter
  crystalliteSizeClosed : crystalliteSize

structure XRayDiffractionPatternEvidence (D : XRayDiffractionPatternPackage) where
  braggAngleClosed : D.braggAngle
  peakIntensityClosed : D.peakIntensity
  fwhmClosed : D.fwhm
  latticeParameterClosed : D.latticeParameter
  crystalliteSizeClosed : D.crystalliteSize

def XRayDiffractionPatternClosed (D : XRayDiffractionPatternPackage) : Prop :=
  D.braggAngle ∧ D.peakIntensity ∧ D.fwhm ∧ D.latticeParameter ∧ D.crystalliteSize

theorem xray_diffraction_pattern_closed_from_evidence
    (D : XRayDiffractionPatternPackage) (E : XRayDiffractionPatternEvidence D) :
    XRayDiffractionPatternClosed D := by
  exact And.intro E.braggAngleClosed (And.intro E.peakIntensityClosed (And.intro E.fwhmClosed (And.intro E.latticeParameterClosed E.crystalliteSizeClosed)))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse