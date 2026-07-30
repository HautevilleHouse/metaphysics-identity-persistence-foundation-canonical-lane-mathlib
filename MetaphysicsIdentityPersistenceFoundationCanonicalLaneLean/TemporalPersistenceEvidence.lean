import MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean.IdentityCriteria

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure TemporalPersistenceEvidencePackage {I : Type u} [Preorder I] {P : PersistenceBundlePackage I} (C : IdentityCriteriaPackage I P) where
  temporalCriterion : Type v
  criterionApplied : ∀ (i : I) (x : P.carrier i), C.criteria → temporalCriterion → Prop
  persistenceUnderFlow : ∀ (i j : I) (h : i ≤ j) (x : P.carrier i) (c : C.criteria) (t : temporalCriterion),
    criterionApplied i x c t → criterionApplied j (P.transition i j h x) c t

def TemporalPersistenceEvidenceClosed {I : Type u} [Preorder I] {P : PersistenceBundlePackage I} {C : IdentityCriteriaPackage I P}
    (T : TemporalPersistenceEvidencePackage I P C) : Prop :=
  ∀ (i j : I) (h : i ≤ j) (x : P.carrier i) (c : C.criteria) (t : T.temporalCriterion),
    T.criterionApplied i x c t → T.criterionApplied j (P.transition i j h x) c t

theorem temporal_persistence_evidence_closed_from_package {I : Type u} [Preorder I] {P : PersistenceBundlePackage I}
    {C : IdentityCriteriaPackage I P} (T : TemporalPersistenceEvidencePackage I P C) :
    TemporalPersistenceEvidenceClosed T := by
  exact T.persistenceUnderFlow

end HautevilleHouse
end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean