import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IdentityPersistenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetaphysicsIdentityPersistenceFoundationCanonicalLaneLean
end HautevilleHouse
