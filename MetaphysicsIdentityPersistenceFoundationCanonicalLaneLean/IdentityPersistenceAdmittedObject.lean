import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure AdmittedObject where
  carrier : Type
  identityRelation : Prop
  persistenceCondition : Prop
  conclusion : identityRelation ∧ persistenceCondition

def IdentityPersistenceWitnessClosed (O : AdmittedObject) : Prop :=
  O.identityRelation ∧ O.persistenceCondition

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
