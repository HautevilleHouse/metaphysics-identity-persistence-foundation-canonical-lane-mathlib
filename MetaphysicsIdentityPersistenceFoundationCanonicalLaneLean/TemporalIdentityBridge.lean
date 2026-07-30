import MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

def temporalBridgeClosed (A : AdmissibleClass) : Prop :=
  (A.object : PersistenceBundlePackage ℕ) ∧
  (A.object : IdentityCriteriaPackage ℕ (A.object : PersistenceBundlePackage ℕ))

theorem temporal_bridge_from_admissible_class (A : AdmissibleClass) : temporalBridgeClosed A := by
  exact And.intro (by
    let P : PersistenceBundlePackage ℕ := A.object
    exact P
  ) (by
    let C : IdentityCriteriaPackage ℕ (A.object : PersistenceBundlePackage ℕ) := A.object
    exact C
  )

end HautevilleHouse
end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean