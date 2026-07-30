import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure FoundationalCasesPackage where
  shipOfTheseus : Prop
  fissionCases : Prop
  fusionCases : Prop
  gradualChange : Prop

structure FoundationalCasesEvidence (F : FoundationalCasesPackage) where
  shipOfTheseusClosed : F.shipOfTheseus
  fissionCasesClosed : F.fissionCases
  fusionCasesClosed : F.fusionCases
  gradualChangeClosed : F.gradualChange

def FoundationalCasesClosed (F : FoundationalCasesPackage) : Prop :=
  F.shipOfTheseus ∧ F.fissionCases ∧ F.fusionCases ∧ F.gradualChange

theorem foundational_cases_closed_from_evidence (F : FoundationalCasesPackage) (E : FoundationalCasesEvidence F) :
    FoundationalCasesClosed F := by
  exact And.intro E.shipOfTheseusClosed (And.intro E.fissionCasesClosed (And.intro E.fusionCasesClosed E.gradualChangeClosed))

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
