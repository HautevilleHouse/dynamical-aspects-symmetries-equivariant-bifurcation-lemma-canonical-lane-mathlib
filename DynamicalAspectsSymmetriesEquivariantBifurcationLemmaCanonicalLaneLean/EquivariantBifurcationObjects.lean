import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EquivariantBifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  groupAction : GroupAction carrier

definition GroupAction (X : Type) := Unit -- placeholder

structure EquivariantBifurcationAdmittedObject where
  space : EquivariantBifurcationSpace
  symmetryGroup : Type
  finiteGroup : Prop
  bifurcationPoint : space.carrier
  equivariantBifurcationLemma : Prop
  conclusion : equivariantBifurcationLemma

structure EquivariantBifurcationEndgameState where
  object : EquivariantBifurcationAdmittedObject

def EquivariantBifurcationWitnessClosed (O : EquivariantBifurcationAdmittedObject) : Prop :=
  O.equivariantBifurcationLemma

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse