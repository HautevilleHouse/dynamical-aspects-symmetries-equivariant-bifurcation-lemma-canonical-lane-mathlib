import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure EquivariantSymmetryGroup where
  groupType : Type u
  groupOperation : groupType → groupType → groupType
  identityElement : groupType
  inverseElement : groupType → groupType
  groupAxioms : Prop
  smoothAction : Prop
  representationSpace : Type v
  representationAction : groupType → representationSpace → representationSpace
  linearRepresentation : Prop
  isEquivariant : Prop
  groupAxiomsClosed : groupAxioms
  smoothActionClosed : smoothAction
  linearRepresentationClosed : linearRepresentation
  isEquivariantClosed : isEquivariant

structure EquivariantSymmetryGroupEvidence (G : EquivariantSymmetryGroup) where
  groupAxiomsClosed : G.groupAxioms
  smoothActionClosed : G.smoothAction
  linearRepresentationClosed : G.linearRepresentation
  isEquivariantClosed : G.isEquivariant

def EquivariantSymmetryGroupClosed (G : EquivariantSymmetryGroup) : Prop :=
  G.groupAxioms ∧ G.smoothAction ∧ G.linearRepresentation ∧ G.isEquivariant

theorem equivariant_symmetry_group_closed_from_evidence (G : EquivariantSymmetryGroup) (E : EquivariantSymmetryGroupEvidence G) : EquivariantSymmetryGroupClosed G := by
  exact And.intro E.groupAxiomsClosed (And.intro E.smoothActionClosed (And.intro E.linearRepresentationClosed E.isEquivariantClosed))

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse