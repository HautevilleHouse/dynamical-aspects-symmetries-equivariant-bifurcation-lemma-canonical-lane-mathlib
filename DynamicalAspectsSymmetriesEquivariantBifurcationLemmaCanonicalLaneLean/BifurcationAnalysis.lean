import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure BifurcationPackage {G : EquivariantDynamicalSystem}
    (S : SymmetryPackage G) where
  bifurcationPoint : G.manifold → Prop
  bifurcationCondition : Prop
  genericBifurcation : Prop
  nonlinearModeInteraction : Prop
  bifurcationPointClosed : bifurcationPoint
  bifurcationConditionClosed : bifurcationCondition
  genericBifurcationClosed : genericBifurcation
  nonlinearModeInteractionClosed : nonlinearModeInteraction

structure BifurcationEvidence {G : EquivariantDynamicalSystem}
    {S : SymmetryPackage G} (B : BifurcationPackage S) where
  bifurcationPointClosed : B.bifurcationPoint
  bifurcationConditionClosed : B.bifurcationCondition
  genericBifurcationClosed : B.genericBifurcation
  nonlinearModeInteractionClosed : B.nonlinearModeInteraction

def BifurcationClosed {G : EquivariantDynamicalSystem}
    {S : SymmetryPackage G} (B : BifurcationPackage S) : Prop :=
  B.bifurcationPoint ∧ B.bifurcationCondition ∧
  B.genericBifurcation ∧ B.nonlinearModeInteraction

theorem bifurcation_closed_from_evidence {G : EquivariantDynamicalSystem}
    {S : SymmetryPackage G} (B : BifurcationPackage S)
    (E : BifurcationEvidence B) : BifurcationClosed B := by
  exact And.intro E.bifurcationPointClosed
    (And.intro E.bifurcationConditionClosed
      (And.intro E.genericBifurcationClosed E.nonlinearModeInteractionClosed))

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse
