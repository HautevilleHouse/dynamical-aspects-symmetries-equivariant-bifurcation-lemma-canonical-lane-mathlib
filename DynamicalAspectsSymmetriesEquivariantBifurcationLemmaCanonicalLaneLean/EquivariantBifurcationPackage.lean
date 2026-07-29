import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.SymmetryGroup

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure EquivariantBifurcationPackage where
  phaseSpace : Type u
  groupAction : Type v
  equivariantVectorField : Prop
  bifurcationParameter : Type w
  symmetricFixedPoint : Prop
  isotropySubgroupsClassified : Prop
  bifurcationEquation : Prop

def EquivariantBifurcationClosed (E : EquivariantBifurcationPackage) : Prop :=
  E.equivariantVectorField ∧
  E.symmetricFixedPoint ∧
  E.isotropySubgroupsClassified ∧
  E.bifurcationEquation

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse