import ElectroMagnetostaticsCanonicalLaneLean.SpinWaveDispersion

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure IsingPackage {M : MaxwellPackage} {L : LandauLifshitzPackage M} {D : MagneticDomainPackage L}
    {S : SpinWavePackage D} where
  lattice : Type u
  spinConfig : Type v
  hamiltonian : Prop
  partitionFunction : Prop
  phaseTransition : Prop
  hamiltonianHolds : hamiltonian
  partitionFunctionHolds : partitionFunction
  phaseTransitionHolds : phaseTransition

structure IsingEvidence {M : MaxwellPackage} {L : LandauLifshitzPackage M} {D : MagneticDomainPackage L}
    {S : SpinWavePackage D} (I : IsingPackage S) where
  hamiltonianClosed : I.hamiltonian
  partitionFunctionClosed : I.partitionFunction
  phaseTransitionClosed : I.phaseTransition

def IsingClosed {M : MaxwellPackage} {L : LandauLifshitzPackage M} {D : MagneticDomainPackage L}
    {S : SpinWavePackage D} (I : IsingPackage S) : Prop :=
  I.hamiltonian ∧ I.partitionFunction ∧ I.phaseTransition

theorem ising_closed_from_evidence {M : MaxwellPackage} {L : LandauLifshitzPackage M} {D : MagneticDomainPackage L}
    {S : SpinWavePackage D} (I : IsingPackage S) (E : IsingEvidence I) :
    IsingClosed I := by
  exact And.intro E.hamiltonianClosed
    (And.intro E.partitionFunctionClosed E.phaseTransitionClosed)

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse