import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrManifoldsBoundariesDomainsCanonicalLaneLean

def bridgeClosed (A : CrManifoldAdmittedObject) : Prop :=
  CrManifoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : CrManifoldAdmittedObject) :
    bridgeClosed A := by
  exact A.object.conclusion

end CrManifoldsBoundariesDomainsCanonicalLaneLean
end HautevilleHouse