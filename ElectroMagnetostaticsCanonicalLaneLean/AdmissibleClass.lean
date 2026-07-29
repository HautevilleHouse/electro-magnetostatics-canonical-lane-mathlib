import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure AdmissibleClass where
  object : MagnetostaticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MagnetostaticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse