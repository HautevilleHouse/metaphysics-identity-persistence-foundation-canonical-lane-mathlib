import BridgeLemmas
import GateLemmas

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

structure IdentityPersistenceEvidence where
  reflexivityClosed : Prop
  transitivityClosed : Prop
  symmetryClosed : Prop
  closureUnderPersistence : Prop
  reflexivityClosedTerm : reflexivityClosed
  transitivityClosedTerm : transitivityClosed
  symmetryClosedTerm : symmetryClosed
  closureUnderPersistenceTerm : closureUnderPersistence

def IdentityPersistenceEvidenceClosed (E : IdentityPersistenceEvidence) : Prop :=
  E.reflexivityClosed ∧ E.transitivityClosed ∧ E.symmetryClosed ∧ E.closureUnderPersistence

theorem identity_persistence_evidence_closed_from_evidence (E : IdentityPersistenceEvidence) :
    IdentityPersistenceEvidenceClosed E := by
  exact And.intro E.reflexivityClosedTerm
    (And.intro E.transitivityClosedTerm
      (And.intro E.symmetryClosedTerm E.closureUnderPersistenceTerm))

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse