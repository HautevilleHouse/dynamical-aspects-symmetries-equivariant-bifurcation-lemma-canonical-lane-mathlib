import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure IsotropySubgroupsPackage (P : EquivariantBifurcationPackage) where
  groupOrbit : Type u
  isotropySubgroup : Type v
  fixedPointSubspace : Type w
  isotropyLattice : Prop
  symmetryBreaking : Prop
  bifurcationDirection : Prop

structure IsotropySubgroupsEvidence (P : EquivariantBifurcationPackage)
    (I : IsotropySubgroupsPackage P) where
  isotropyLatticeClosed : I.isotropyLattice
  symmetryBreakingClosed : I.symmetryBreaking
  bifurcationDirectionClosed : I.bifurcationDirection

def IsotropySubgroupsClosed (P : EquivariantBifurcationPackage)
    (I : IsotropySubgroupsPackage P) : Prop :=
  I.isotropyLattice ∧ I.symmetryBreaking ∧ I.bifurcationDirection

theorem isotropy_subgroups_closed_from_evidence
    (P : EquivariantBifurcationPackage) (I : IsotropySubgroupsPackage P)
    (E : IsotropySubgroupsEvidence P I) : IsotropySubgroupsClosed P I := by
  exact And.intro E.isotropyLatticeClosed
    (And.intro E.symmetryBreakingClosed E.bifurcationDirectionClosed)

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse