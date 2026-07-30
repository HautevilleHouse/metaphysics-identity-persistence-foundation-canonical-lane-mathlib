import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure CriterionIdentityPackage where
  identityRelation : Prop
  transitivity : Prop
  symmetry : Prop
  indiscernibilityIndiscernible : Prop
  persistenceUnderChange : Prop
  transitivityTerm : transitivity
  symmetryTerm : symmetry
  indiscernibilityIndiscernibleTerm : indiscernibilityIndiscernible
  persistenceUnderChangeTerm : persistenceUnderChange

structure CriterionIdentityEvidence where
  identityRelationClosed : CriterionIdentityPackage.identityRelation
  transitivityClosed : CriterionIdentityPackage.transitivity
  symmetryClosed : CriterionIdentityPackage.symmetry
  indiscernibilityIndiscernibleClosed : CriterionIdentityPackage.indiscernibilityIndiscernible
  persistenceUnderChangeClosed : CriterionIdentityPackage.persistenceUnderChange

def CriterionIdentityClosed (P : CriterionIdentityPackage) : Prop :=
  P.identityRelation ∧ P.transitivity ∧ P.symmetry ∧ P.indiscernibilityIndiscernible ∧ P.persistenceUnderChange

theorem criterion_identity_closed (P : CriterionIdentityPackage) (E : CriterionIdentityEvidence) :
    CriterionIdentityClosed P := by
  exact And.intro E.identityRelationClosed
    (And.intro E.transitivityClosed
      (And.intro E.symmetryClosed
        (And.intro E.indiscernibilityIndiscernibleClosed E.persistenceUnderChangeClosed)))

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
