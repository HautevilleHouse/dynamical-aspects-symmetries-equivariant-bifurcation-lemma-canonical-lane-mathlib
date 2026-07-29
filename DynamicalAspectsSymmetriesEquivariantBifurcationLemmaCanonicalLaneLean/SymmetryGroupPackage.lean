import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure SymmetryGroupPackage where
  group : Type
  groupOperation : group → group → group
  identityElement : group
  inverseMap : group → group
  groupLawsSatisfied : Prop
  representationOnPhaseSpace : Prop
  irreducibleDecomposition : Prop
  isotropyLattice : Prop

definition GroupAction (G X : Type) := G → X → X -- placeholder

structure SymmetryGroupEvidence (S : SymmetryGroupPackage) where
  groupLawsSatisfiedClosed : S.groupLawsSatisfied
  representationOnPhaseSpaceClosed : S.representationOnPhaseSpace
  irreducibleDecompositionClosed : S.irreducibleDecomposition
  isotropyLatticeClosed : S.isotropyLattice

def SymmetryGroupClosed (S : SymmetryGroupPackage) : Prop :=
  S.groupLawsSatisfied ∧ S.representationOnPhaseSpace ∧
  S.irreducibleDecomposition ∧ S.isotropyLattice

theorem symmetry_group_closed_from_evidence
    (S : SymmetryGroupPackage) (E : SymmetryGroupEvidence S) :
    SymmetryGroupClosed S := by
  exact And.intro E.groupLawsSatisfiedClosed
    (And.intro E.representationOnPhaseSpaceClosed
      (And.intro E.irreducibleDecompositionClosed
        E.isotropyLatticeClosed))

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse