import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.EquivariantSymmetryGroup

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure IsotropySubgroup (G : EquivariantSymmetryGroup) where
  point : G.representationSpace
  subgroupType : Type u
  subgroupInclusion : subgroupType → G.groupType
  isotropyCondition : ∀ (h : subgroupType), G.representationAction (subgroupInclusion h) point = point
  closedSubgroup : Prop
  isotropyConditionClosed : isotropyCondition
  closedSubgroupClosed : closedSubgroup

structure IsotropySubgroupEvidence (G : EquivariantSymmetryGroup) (H : IsotropySubgroup G) where
  isotropyConditionClosed : H.isotropyCondition
  closedSubgroupClosed : H.closedSubgroup

def IsotropySubgroupClosed (G : EquivariantSymmetryGroup) (H : IsotropySubgroup G) : Prop :=
  H.isotropyCondition ∧ H.closedSubgroup

theorem isotropy_subgroup_closed_from_evidence (G : EquivariantSymmetryGroup) (H : IsotropySubgroup G) (E : IsotropySubgroupEvidence G H) : IsotropySubgroupClosed G H := by
  exact And.intro E.isotropyConditionClosed E.closedSubgroupClosed

end HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse