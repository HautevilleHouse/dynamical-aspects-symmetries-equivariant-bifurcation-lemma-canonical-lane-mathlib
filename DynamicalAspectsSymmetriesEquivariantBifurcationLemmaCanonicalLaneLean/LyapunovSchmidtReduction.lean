import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.EquivariantSymmetryGroup
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean.IsotropySubgroup

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

structure LyapunovSchmidtReduction (G : EquivariantSymmetryGroup) where
  bifurcationEquation : G.representationSpace → G.representationSpace
  symmetryBreakingParameter : ℝ
  kernelDimension : ℕ
  reducedEquation : G.representationSpace → G.representationSpace
  reductionValid : Prop
  equivariantReduction : Prop
  reductionValidClosed : reductionValid
  equivariantReductionClosed : equivariantReduction

structure LyapunovSchmidtReductionEvidence (G : EquivariantSymmetryGroup) (LS : LyapunovSchmidtReduction G) where
  reductionValidClosed : LS.reductionValid
  equivariantReductionClosed : LS.equivariantReduction

def LyapunovSchmidtReductionClosed (G : EquivariantSymmetryGroup) (LS : LyapunovSchmidtReduction G) : Prop :=
  LS.reductionValid ∧ LS.equivariantReduction

theorem lyapunov_schmidt_reduction_closed_from_evidence (G : EquivariantSymmetryGroup) (LS : LyapunovSchmidtReduction G) (E : LyapunovSchmidtReductionEvidence G LS) : LyapunovSchmidtReductionClosed G LS := by
  exact And.intro E.reductionValidClosed E.equivariantReductionClosed

end HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse