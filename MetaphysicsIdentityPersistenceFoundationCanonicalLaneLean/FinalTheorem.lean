import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

def AdmissibleMetaphysicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem admissible_metaphysics_endgame (A : AdmissibleClass) :
    AdmissibleMetaphysicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
