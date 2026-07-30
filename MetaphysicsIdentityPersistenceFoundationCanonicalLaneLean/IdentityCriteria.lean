import MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean.PersistenceBundle

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure IdentityCriteriaPackage {I : Type u} [Preorder I] (P : PersistenceBundlePackage I) where
  criteria : Type v
  satisfies : ∀ (i : I), P.carrier i → criteria → Prop
  persistenceCompatibility : ∀ (i j : I) (h : i ≤ j) (x : P.carrier i) (c : criteria),
    satisfies i x c → satisfies j (P.transition i j h x) c

def IdentityCriteriaClosed {I : Type u} [Preorder I] {P : PersistenceBundlePackage I}
    (C : IdentityCriteriaPackage I P) : Prop :=
  ∀ (i j : I) (h : i ≤ j) (x : P.carrier i) (c : C.criteria),
    C.satisfies i x c → C.satisfies j (P.transition i j h x) c

theorem identity_criteria_closed_from_package {I : Type u} [Preorder I] {P : PersistenceBundlePackage I}
    (C : IdentityCriteriaPackage I P) : IdentityCriteriaClosed C := by
  exact C.persistenceCompatibility

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse