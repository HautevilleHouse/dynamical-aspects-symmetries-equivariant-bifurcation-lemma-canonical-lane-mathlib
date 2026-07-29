import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure DynamicalSystemsPackage where
  attractorExistence : Prop
  stabilityUnderPerturbation : Prop
  localNormalForm : Prop
  centerManifoldReduction : Prop
  normalFormComputed : Prop

structure DynamicalSystemsEvidence (D : DynamicalSystemsPackage) where
  attractorExistenceClosed : D.attractorExistence
  stabilityUnderPerturbationClosed : D.stabilityUnderPerturbation
  localNormalFormClosed : D.localNormalForm
  centerManifoldReductionClosed : D.centerManifoldReduction
  normalFormComputedClosed : D.normalFormComputed

def DynamicalSystemsClosed (D : DynamicalSystemsPackage) : Prop :=
  D.attractorExistence ∧ D.stabilityUnderPerturbation ∧
  D.localNormalForm ∧ D.centerManifoldReduction ∧ D.normalFormComputed

theorem dynamical_systems_closed_from_evidence
    (D : DynamicalSystemsPackage) (E : DynamicalSystemsEvidence D) :
    DynamicalSystemsClosed D := by
  exact And.intro E.attractorExistenceClosed
    (And.intro E.stabilityUnderPerturbationClosed
      (And.intro E.localNormalFormClosed
        (And.intro E.centerManifoldReductionClosed
          E.normalFormComputedClosed)))

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse