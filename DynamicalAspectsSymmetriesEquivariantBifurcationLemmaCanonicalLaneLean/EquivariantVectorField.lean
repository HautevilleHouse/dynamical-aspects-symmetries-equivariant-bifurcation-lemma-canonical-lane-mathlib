import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.EquivariantSymmetryGroup

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure EquivariantVectorField (G : EquivariantSymmetryGroup) where
  manifold : Type u
  vectorField : manifold → manifold
  smoothness : Prop
  equivarianceCondition : ∀ (g : G.groupType) (x : manifold), vectorField (G.representationAction g x) = G.representationAction g (vectorField x)
  smoothnessClosed : smoothness
  equivarianceConditionClosed : equivarianceCondition

structure EquivariantVectorFieldEvidence (G : EquivariantSymmetryGroup) (V : EquivariantVectorField G) where
  smoothnessClosed : V.smoothness
  equivarianceConditionClosed : V.equivarianceCondition

def EquivariantVectorFieldClosed (G : EquivariantSymmetryGroup) (V : EquivariantVectorField G) : Prop :=
  V.smoothness ∧ V.equivarianceCondition

theorem equivariant_vector_field_closed_from_evidence (G : EquivariantSymmetryGroup) (V : EquivariantVectorField G) (E : EquivariantVectorFieldEvidence G V) : EquivariantVectorFieldClosed G V := by
  exact And.intro E.smoothnessClosed E.equivarianceConditionClosed

end HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse