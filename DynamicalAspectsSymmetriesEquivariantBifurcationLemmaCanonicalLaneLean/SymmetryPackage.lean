import DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemma

structure SymmetryPackage where
  group : Type u
  actionOnPhaseSpace : Prop
  actionOnParameters : Prop
  equivariantVectorFieldConstructed : Prop

def SymmetryClosed (S : SymmetryPackage) : Prop :=
  S.actionOnPhaseSpace ∧ S.actionOnParameters ∧ S.equivariantVectorFieldConstructed

theorem symmetry_closed (S : SymmetryPackage) :
    SymmetryClosed S := by
  exact And.intro S.actionOnPhaseSpace (And.intro S.actionOnParameters S.equivariantVectorFieldConstructed)

end DynamicalAspectsSymmetriesEquivariantBifurcationLemma
end HautevilleHouse