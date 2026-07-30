import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

def ConstrainedIdentityPersistenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_identity_persistence_endgame (A : AdmissibleClass) :
    ConstrainedIdentityPersistenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
