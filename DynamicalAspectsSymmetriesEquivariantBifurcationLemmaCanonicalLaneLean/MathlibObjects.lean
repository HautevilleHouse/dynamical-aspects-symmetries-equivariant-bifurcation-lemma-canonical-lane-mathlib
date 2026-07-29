import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  object : Type u
  topology : TopologicalSpace object
  groupAction : Type v
  equivariantDynamics : Prop
  bifurcationPoint : Prop
  conclusion : EquivariantBifurcationWitnessClosed this

structure EquivariantBifurcationWitnessClosed where
  O : AdmittedObject

def bridgeClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse