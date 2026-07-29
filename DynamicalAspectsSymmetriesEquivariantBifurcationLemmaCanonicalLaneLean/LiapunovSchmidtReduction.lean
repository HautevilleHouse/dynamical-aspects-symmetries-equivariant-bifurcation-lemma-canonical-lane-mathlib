import DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.EquivariantBifurcationPackage

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemma

structure LiapunovSchmidtReductionPackage {G : EquivariantBifurcationPackage} where
  kernelDimension : Nat
  complementChosen : Prop
  projectionOperator : Prop
  reducedEquation : Prop
  symmetryPreserved : Prop

def LiapunovSchmidtReductionClosed {G : EquivariantBifurcationPackage} (R : LiapunovSchmidtReductionPackage G) : Prop :=
  R.complementChosen ∧ R.projectionOperator ∧ R.reducedEquation ∧ R.symmetryPreserved

theorem liapunov_schmidt_reduction_closed {G : EquivariantBifurcationPackage} (R : LiapunovSchmidtReductionPackage G) :
    LiapunovSchmidtReductionClosed R := by
  exact And.intro R.complementChosen (And.intro R.projectionOperator (And.intro R.reducedEquation R.symmetryPreserved))

end DynamicalAspectsSymmetriesEquivariantBifurcationLemma
end HautevilleHouse