import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrManifoldsBoundariesDomainsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

-- Define the constrained closure for Cr manifolds boundaries domain.
def ConstrainedCrManifoldBoundariesClosure (A : CrManifoldAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cr_manifold_boundaries_endgame (A : CrManifoldAdmittedObject) :
    ConstrainedCrManifoldBoundariesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CrManifoldsBoundariesDomainsCanonicalLaneLean
end HautevilleHouse