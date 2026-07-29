import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.EquivariantSymmetryGroup
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.LyapunovSchmidtReduction

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure EquivariantBifurcationConditions where
  groupActionEquivariance : Prop
  kernelStructure : Prop
  branchingEquation : Prop
  existenceOfBranches : Prop
  groupActionEquivarianceClosed : groupActionEquivariance
  kernelStructureClosed : kernelStructure
  branchingEquationClosed : branchingEquation
  existenceOfBranchesClosed : existenceOfBranches

structure EquivariantBifurcationLemma (G : EquivariantSymmetryGroup) where
  reduction : LyapunovSchmidtReduction G
  conditions : EquivariantBifurcationConditions
  bifurcationStatement : Prop
  proofOfLemma : conditions.groupActionEquivariance ∧ conditions.kernelStructure ∧ conditions.branchingEquation ∧ conditions.existenceOfBranches → bifurcationStatement
  conditionsClosed : conditions.groupActionEquivariance ∧ conditions.kernelStructure ∧ conditions.branchingEquation ∧ conditions.existenceOfBranches
  bifurcationStatementClosed : bifurcationStatement

structure EquivariantBifurcationLemmaEvidence (G : EquivariantSymmetryGroup) (L : EquivariantBifurcationLemma G) where
  conditionsClosed : EquivariantBifurcationConditions L.conditions
  bifurcationStatementClosed : L.bifurcationStatement

def EquivariantBifurcationLemmaClosed (G : EquivariantSymmetryGroup) (L : EquivariantBifurcationLemma G) : Prop :=
  (L.conditions.groupActionEquivariance ∧ L.conditions.kernelStructure ∧ L.conditions.branchingEquation ∧ L.conditions.existenceOfBranches) ∧ L.bifurcationStatement

theorem equivariant_bifurcation_lemma_closed_from_evidence (G : EquivariantSymmetryGroup) (L : EquivariantBifurcationLemma G) (E : EquivariantBifurcationLemmaEvidence G L) : EquivariantBifurcationLemmaClosed G L := by
  exact And.intro (And.intro (And.intro E.conditionsClosed.groupActionEquivarianceClosed (And.intro E.conditionsClosed.kernelStructureClosed (And.intro E.conditionsClosed.branchingEquationClosed E.conditionsClosed.existenceOfBranchesClosed)))) E.bifurcationStatementClosed

end HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse