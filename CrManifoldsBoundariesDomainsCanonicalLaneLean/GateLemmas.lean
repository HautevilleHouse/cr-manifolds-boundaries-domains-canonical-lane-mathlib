import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrManifoldsBoundariesDomainsCanonicalLaneLean

def gateClosed (A : CrManifoldAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CrManifoldAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

end CrManifoldsBoundariesDomainsCanonicalLaneLean
end HautevilleHouse