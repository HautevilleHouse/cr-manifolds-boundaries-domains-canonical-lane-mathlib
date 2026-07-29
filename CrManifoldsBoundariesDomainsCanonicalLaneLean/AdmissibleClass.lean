import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrManifoldsBoundariesDomainsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CrManifoldObject where
  carrier : Type
  topology : TopologicalSpace carrier
  crDifferentiable : Prop
  boundary : Set carrier
  boundarySmooth : Prop
  crCodimension : ℕ
  admissibleBoundaryCondition : Prop
  conclusion : admissibleBoundaryCondition

structure CrManifoldAdmittedObject where
  object : CrManifoldObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CrManifoldAdmittedObject) : Prop :=
  CrManifoldWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CrManifoldsBoundariesDomainsCanonicalLaneLean
end HautevilleHouse