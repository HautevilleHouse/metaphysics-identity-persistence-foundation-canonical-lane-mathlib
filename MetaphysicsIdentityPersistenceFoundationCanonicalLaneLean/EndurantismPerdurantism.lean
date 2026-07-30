import MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean.IdentityCriteria

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure EndurantismPackage {I : Type u} [Preorder I] {P : PersistenceBundlePackage I} (C : IdentityCriteriaPackage I P) where
  whollyPresent : ∀ (i : I) (x : P.carrier i), C.satisfies i x (classical.choice (C.satisfies i x)) → True

def EndurantismClosed {I : Type u} [Preorder I] {P : PersistenceBundlePackage I} {C : IdentityCriteriaPackage I P}
    (E : EndurantismPackage I P C) : Prop := True

structure PerdurantismPackage {I : Type u} [Preorder I] {P : PersistenceBundlePackage I} (C : IdentityCriteriaPackage I P) where
  temporalParts : ∀ (x : ∀ i, P.carrier i), (∀ i j, i ≤ j → P.transition i j (Exists.intro i x) (x i) = x j) → True

def PerdurantismClosed {I : Type u} [Preorder I] {P : PersistenceBundlePackage I} {C : IdentityCriteriaPackage I P}
    (E : PerdurantismPackage I P C) : Prop := True

end HautevilleHouse
end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean