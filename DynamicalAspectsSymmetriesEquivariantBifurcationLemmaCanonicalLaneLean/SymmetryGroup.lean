import Mathlib.GroupTheory.GroupAction.Basic

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure SymmetryGroup where
  G : Type u
  [group : Group G]
  action : MulAction G (Type v)
  topologicalAction : Prop
  properAction : Prop

def SymmetryGroupClosed (S : SymmetryGroup) : Prop :=
  S.topologicalAction ∧ S.properAction

theorem symmetry_group_closed (S : SymmetryGroup) (h1 : S.topologicalAction) (h2 : S.properAction) :
    SymmetryGroupClosed S := by
  exact And.intro h1 h2

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse