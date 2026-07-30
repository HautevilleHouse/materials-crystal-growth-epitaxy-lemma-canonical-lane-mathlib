import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalGrowthEpitaxyPackage where
  substrate : SubstrateType
  adatomFlux : AdatomFluxType
  temperature : TemperatureType
  surfaceDiffusion : SurfaceDiffusionType
  nucleationRate : NucleationRateType

def CrystalGrowthEpitaxyClosed (P : CrystalGrowthEpitaxyPackage) : Prop :=
  P.substrate.crystalStructureDefined ∧
  P.adatomFlux.fluxStable ∧
  P.temperature.withinGrowthWindow ∧
  P.surfaceDiffusion.coefficientPositive ∧
  P.nucleationRate.rateBounded

theorem crystal_growth_epitaxy_closed (P : CrystalGrowthEpitaxyPackage) : CrystalGrowthEpitaxyClosed P := by
  exact And.intro P.substrate.crystalStructureDefinedTerm
    (And.intro P.adatomFlux.fluxStableTerm
      (And.intro P.temperature.withinGrowthWindowTerm
        (And.intro P.surfaceDiffusion.coefficientPositiveTerm
          P.nucleationRate.rateBoundedTerm)))

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse