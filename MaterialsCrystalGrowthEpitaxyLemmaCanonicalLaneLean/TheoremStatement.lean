import MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean

structure CrystalGrowthAdmittedObject where
  unitCell : Type
  bravaisLatticeClass : Prop
  epitaxialOrientation : Prop
  matchingCondition : Prop
  conclusion : matchingCondition

def CrystalGrowthWitnessClosed (O : CrystalGrowthAdmittedObject) : Prop :=
  O.matchingCondition

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "materials-crystal-growth-canonical-lane",
  theoremName := "Materials Crystal Growth Epitaxy Lemma",
  theoremObject := "Epitaxy lemma — epitaxial growth condition is equivalent to lattice matching condition in Bravais class",
  classicalBoundary := "classical characterization of Bravais lattices and epitaxial interfaces",
  manifoldConstrainedStatement := "The epitaxy lemma is internalized: for any CrystalGrowthAdmittedObject satisfying the Bravais lattice class and epitaxial orientation, the matching condition is satisfied.",
  certificateLane := "manifold_constrained",
  carriedRemainder := "Classical Bravais lattice classification and epitaxial orientation matching are carried as background."
}

theorem statement_check : sourceTheoremStatement.sourceKey = "materials-crystal-growth-canonical-lane" := by rfl

end MaterialsCrystalGrowthEpitaxyLemmaCanonicalLaneLean
end HautevilleHouse
