import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure EquivariantDynamicalSystem where
  manifold : Type u
  groupAction : Type v
  groupOperation : groupAction → groupAction → groupAction
  groupIdentity : groupAction
  groupInverse : groupAction → groupAction
  equivariantVectorField : groupAction → manifold → manifold
  groupActionSmooth : Prop
  equivarianceCondition : Prop
  groupActionSmoothTerm : groupActionSmooth
  equivarianceConditionTerm : equivarianceCondition

structure SymmetryPackage (G : EquivariantDynamicalSystem) where
  symmetricFixedPoint : G.manifold → Prop
  isotropySubgroup : G.manifold → Prop
  orbitStructure : Prop
  orbitStructureClosed : orbitStructure

structure SymmetryEvidence {G : EquivariantDynamicalSystem} (S : SymmetryPackage G) where
  symmetricFixedPointClosed : S.symmetricFixedPoint
  isotropySubgroupClosed : S.isotropySubgroup
  orbitStructureClosed : S.orbitStructure

def SymmetryClosed {G : EquivariantDynamicalSystem} (S : SymmetryPackage G) : Prop :=
  S.symmetricFixedPoint ∧ S.isotropySubgroup ∧ S.orbitStructure

theorem symmetry_closed_from_evidence {G : EquivariantDynamicalSystem}
    (S : SymmetryPackage G) (E : SymmetryEvidence S) : SymmetryClosed S := by
  exact And.intro E.symmetricFixedPointClosed
    (And.intro E.isotropySubgroupClosed E.orbitStructureClosed)

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse
