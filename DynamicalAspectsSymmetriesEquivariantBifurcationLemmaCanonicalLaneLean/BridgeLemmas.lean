import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EquivariantBifurcationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsSymmetriesEquivariantBifurcationLemmaCanonicalLaneLean
end HautevilleHouse