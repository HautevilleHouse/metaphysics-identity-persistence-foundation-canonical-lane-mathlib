import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure PersistenceConditionsPackage (C : CriterionIdentityPackage) where
  diachronicIdentity : Prop
  synchronicIdentity : Prop
  continuityRequirement : Prop
  psychologicalConnectedness : Prop
  bodilyContinuity : Prop

structure PersistenceConditionsEvidence (C : CriterionIdentityPackage) (P : PersistenceConditionsPackage C) where
  diachronicIdentityClosed : P.diachronicIdentity
  synchronicIdentityClosed : P.synchronicIdentity
  continuityRequirementClosed : P.continuityRequirement
  psychologicalConnectednessClosed : P.psychologicalConnectedness
  bodilyContinuityClosed : P.bodilyContinuity

def PersistenceConditionsClosed (C : CriterionIdentityPackage) (P : PersistenceConditionsPackage C) : Prop :=
  P.diachronicIdentity ∧ P.synchronicIdentity ∧
  P.continuityRequirement ∧ P.psychologicalConnectedness ∧
  P.bodilyContinuity

theorem persistence_conditions_closed (C : CriterionIdentityPackage) (P : PersistenceConditionsPackage C) (E : PersistenceConditionsEvidence C P) :
    PersistenceConditionsClosed C P := by
  exact And.intro E.diachronicIdentityClosed
    (And.intro E.synchronicIdentityClosed
      (And.intro E.continuityRequirementClosed
        (And.intro E.psychologicalConnectednessClosed E.bodilyContinuityClosed)))

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
