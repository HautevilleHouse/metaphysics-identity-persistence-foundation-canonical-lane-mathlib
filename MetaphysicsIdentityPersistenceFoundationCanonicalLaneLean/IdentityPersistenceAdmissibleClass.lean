import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure IdentityPersistenceAdmittedObject where
  entity : Type
  persistenceCondition : Prop
  identityCriterion : Prop
  conclusion : persistenceCondition ∧ identityCriterion

structure AdmissibleClass where
  object : IdentityPersistenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.persistenceCondition ∧ A.object.identityCriterion) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
