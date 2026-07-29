import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure MaxwellPackage where
  spaceTime : Type u
  electricField : Type v
  magneticField : Type w
  maxwellEquations : Prop
  chargeConservation : Prop
  maxwellEquationsHolds : maxwellEquations
  chargeConservationHolds : chargeConservation

structure MaxwellEvidence (M : MaxwellPackage) where
  maxwellEquationsClosed : M.maxwellEquations
  chargeConservationClosed : M.chargeConservation

def MaxwellClosed (M : MaxwellPackage) : Prop :=
  M.maxwellEquations ∧ M.chargeConservation

theorem maxwell_closed_from_evidence (M : MaxwellPackage) (E : MaxwellEvidence M) :
    MaxwellClosed M := by
  exact And.intro E.maxwellEquationsClosed E.chargeConservationClosed

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse