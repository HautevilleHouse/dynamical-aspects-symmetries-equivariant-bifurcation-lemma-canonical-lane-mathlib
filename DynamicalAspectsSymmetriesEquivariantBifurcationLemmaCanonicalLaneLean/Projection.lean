import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def equivariantBifurcationProjection : Projection AdmittedObject := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem equivariant_bifurcation_projection_idempotent (x : AdmittedObject) :
    equivariantBifurcationProjection.toFun (equivariantBifurcationProjection.toFun x) = equivariantBifurcationProjection.toFun x := by
  exact equivariantBifurcationProjection.idempotent x

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse