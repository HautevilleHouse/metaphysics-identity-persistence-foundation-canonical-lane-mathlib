import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure EndpointClassificationPackage where
  targetObject : Type
  persistenceCondition : Prop
  identityCriterion : Prop
  endpointMatchesMetaphysicsStatement : Prop

structure EndpointClassificationEvidence (Epkg : EndpointClassificationPackage) where
  persistenceConditionClosed : Epkg.persistenceCondition
  identityCriterionClosed : Epkg.identityCriterion
  endpointMatchesMetaphysicsStatementClosed : Epkg.endpointMatchesMetaphysicsStatement

def EndpointClassificationClosed (Epkg : EndpointClassificationPackage) : Prop :=
  Epkg.persistenceCondition ∧
  Epkg.identityCriterion ∧
  Epkg.endpointMatchesMetaphysicsStatement

theorem endpoint_classification_closed_from_evidence
    (Epkg : EndpointClassificationPackage) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.persistenceConditionClosed
    (And.intro E.identityCriterionClosed E.endpointMatchesMetaphysicsStatementClosed)

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
