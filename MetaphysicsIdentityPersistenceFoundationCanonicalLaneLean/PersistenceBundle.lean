import MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure PersistenceBundlePackage {I : Type u} [Preorder I] where
  carrier : I → Type v
  transition : ∀ (i j : I), i ≤ j → carrier i → carrier j
  functorial : ∀ (i : I) (h : i ≤ i) (x : carrier i), transition i i h x = x
  composition : ∀ (i j k : I) (hij : i ≤ j) (hjk : j ≤ k) (x : carrier i),
    transition i k (Preorder.le_trans hij hjk) x = transition j k hjk (transition i j hij x)

def PersistenceBundleClosed {I : Type u} [Preorder I] (P : PersistenceBundlePackage I) : Prop :=
  (∀ (i : I) (h : i ≤ i) (x : P.carrier i), P.transition i i h x = x) ∧
  (∀ (i j k : I) (hij : i ≤ j) (hjk : j ≤ k) (x : P.carrier i),
    P.transition i k (Preorder.le_trans hij hjk) x = P.transition j k hjk (P.transition i j hij x))

theorem persistence_bundle_closed_from_package {I : Type u} [Preorder I] (P : PersistenceBundlePackage I) :
    PersistenceBundleClosed P := by
  exact And.intro P.functorial P.composition

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse