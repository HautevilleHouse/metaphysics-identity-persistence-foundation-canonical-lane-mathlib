import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure MetaphysicsObject where
  carrier : Type
  identityRelation : Prop
  persistenceCondition : Prop
  individuationCriterion : Prop

structure MetaphysicsAdmittedObject where
  object : MetaphysicsObject
  identityRelation : Prop
  persistenceCondition : Prop
  individuationCriterion : Prop
  conclusion : identityRelation ∧ persistenceCondition ∧ individuationCriterion

structure MetaphysicsEndgameState where
  object : MetaphysicsAdmittedObject

def MetaphysicsWitnessClosed (O : MetaphysicsAdmittedObject) : Prop :=
  O.identityRelation ∧ O.persistenceCondition ∧ O.individuationCriterion

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
