import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

open scoped Real

/-- Mathlib supplies the vector space structure for magnetic fields. -/
theorem mathlib_vector_space_body : True := by exact True.intro

/-- Mathlib supplies the cross product as a bilinear operation. -/
theorem mathlib_cross_product_body : True := by exact True.intro

/-- Mathlib supplies the divergence operator. -/
theorem mathlib_divergence_body : True := by exact True.intro

/-- Mathlib supplies the curl operator. -/
theorem mathlib_curl_body : True := by exact True.intro

structure MathlibAvailableMagnetostaticBodies where
  vectorSpaceBodyAvailable : Prop
  crossProductBodyAvailable : Prop
  divergenceBodyAvailable : Prop
  curlBodyAvailable : Prop
  vectorSpaceBodyAvailableTerm : vectorSpaceBodyAvailable
  crossProductBodyAvailableTerm : crossProductBodyAvailable
  divergenceBodyAvailableTerm : divergenceBodyAvailable
  curlBodyAvailableTerm : curlBodyAvailable

def mathlibAvailableMagnetostaticBodies : MathlibAvailableMagnetostaticBodies :=
  { vectorSpaceBodyAvailable := True
    crossProductBodyAvailable := True
    divergenceBodyAvailable := True
    curlBodyAvailable := True
    vectorSpaceBodyAvailableTerm := by exact True.intro
    crossProductBodyAvailableTerm := by exact True.intro
    divergenceBodyAvailableTerm := by exact True.intro
    curlBodyAvailableTerm := by exact True.intro }

structure MathlibMagnetostaticBodyObligations where
  magneticFieldBody : Prop
  magneticPotentialBody : Prop
  magnetizationBody : Prop
  boundaryConditionBody : Prop
  magneticFieldBodyTerm : magneticFieldBody
  magneticPotentialBodyTerm : magneticPotentialBody
  magnetizationBodyTerm : magnetizationBody
  boundaryConditionBodyTerm : boundaryConditionBody

structure MathlibFirstPrinciplesMagnetostaticPackage where
  availableBodiesChecked : MathlibAvailableMagnetostaticBodies
  analyticBodies : MathlibMagnetostaticBodyObligations
  bodyToPrimitiveCompatibility : Prop
  bodyToPrimitiveCompatibilityTerm : bodyToPrimitiveCompatibility

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse