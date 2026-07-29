import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure EquivariantBranchingPackage (P : EquivariantBifurcationPackage)
    (L : LiapunovSchmidtReductionPackage P) (I : IsotropySubgroupsPackage P) where
  bifurcationEquationReduced : Prop
  symmetryAdmissibleSolutions : Prop
  branchingDirections : Prop
  stabilityOfBranches : Prop

structure EquivariantBranchingEvidence (P : EquivariantBifurcationPackage)
    (L : LiapunovSchmidtReductionPackage P) (I : IsotropySubgroupsPackage P)
    (B : EquivariantBranchingPackage P L I) where
  bifurcationEquationReducedClosed : B.bifurcationEquationReduced
  symmetryAdmissibleSolutionsClosed : B.symmetryAdmissibleSolutions
  branchingDirectionsClosed : B.branchingDirections
  stabilityOfBranchesClosed : B.stabilityOfBranches

def EquivariantBranchingClosed (P : EquivariantBifurcationPackage)
    (L : LiapunovSchmidtReductionPackage P) (I : IsotropySubgroupsPackage P)
    (B : EquivariantBranchingPackage P L I) : Prop :=
  B.bifurcationEquationReduced ∧ B.symmetryAdmissibleSolutions ∧
  B.branchingDirections ∧ B.stabilityOfBranches

theorem equivariant_branching_closed_from_evidence
    (P : EquivariantBifurcationPackage) (L : LiapunovSchmidtReductionPackage P)
    (I : IsotropySubgroupsPackage P) (B : EquivariantBranchingPackage P L I)
    (E : EquivariantBranchingEvidence P L I B) : EquivariantBranchingClosed P L I B := by
  exact And.intro E.bifurcationEquationReducedClosed
    (And.intro E.symmetryAdmissibleSolutionsClosed
      (And.intro E.branchingDirectionsClosed E.stabilityOfBranchesClosed))

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse