import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalDefectModel where
  vacancyConcentration : Float
  interstitialConcentration : Float
  dislocationDensity : Float
  defectFormationEnergy : Float
  recombinationRate : Float
  vacancyModeled : Prop
  interstitialModeled : Prop
  dislocationModeled : Prop
  energyDefined : Prop
  recombinationModeled : Prop
  vacancyModeledTerm : vacancyModeled
  interstitialModeledTerm : interstitialModeled
  dislocationModeledTerm : dislocationModeled
  energyDefinedTerm : energyDefined
  recombinationModeledTerm : recombinationModeled

structure DefectDynamicsEvidence (D : CrystalDefectModel) where
  vacancyModeledClosed : D.vacancyModeled
  interstitialModeledClosed : D.interstitialModeled
  dislocationModeledClosed : D.dislocationModeled
  energyDefinedClosed : D.energyDefined
  recombinationModeledClosed : D.recombinationModeled

def DefectDynamicsClosed (D : CrystalDefectModel) : Prop :=
  D.vacancyModeled ∧ D.interstitialModeled ∧ D.dislocationModeled ∧ D.energyDefined ∧ D.recombinationModeled

theorem defect_dynamics_closed_from_evidence (D : CrystalDefectModel) (E : DefectDynamicsEvidence D) :
    DefectDynamicsClosed D := by
  exact And.intro E.vacancyModeledClosed
    (And.intro E.interstitialModeledClosed
      (And.intro E.dislocationModeledClosed
        (And.intro E.energyDefinedClosed E.recombinationModeledClosed)))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse