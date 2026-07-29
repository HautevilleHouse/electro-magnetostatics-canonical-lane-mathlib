import ElectroMagnetostaticsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

def ConstrainedMagnetostaticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_magnetostatic_endgame (A : AdmissibleClass) :
    ConstrainedMagnetostaticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse