import ElectroMagnetostaticsCanonicalLaneLean.MagneticDomains

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure SpinWavePackage {M : MaxwellPackage} {L : LandauLifshitzPackage M} {D : MagneticDomainPackage L} where
  waveVector : Type u
  frequency : Type v
  dispersionRelation : Prop
  magnonBandgap : Prop
  dispersionRelationHolds : dispersionRelation
  magnonBandgapHolds : magnonBandgap

structure SpinWaveEvidence {M : MaxwellPackage} {L : LandauLifshitzPackage M}
    {D : MagneticDomainPackage L} (S : SpinWavePackage D) where
  dispersionRelationClosed : S.dispersionRelation
  magnonBandgapClosed : S.magnonBandgap

def SpinWaveClosed {M : MaxwellPackage} {L : LandauLifshitzPackage M}
    {D : MagneticDomainPackage L} (S : SpinWavePackage D) : Prop :=
  S.dispersionRelation ∧ S.magnonBandgap

theorem spin_wave_closed_from_evidence {M : MaxwellPackage} {L : LandauLifshitzPackage M}
    {D : MagneticDomainPackage L} (S : SpinWavePackage D) (E : SpinWaveEvidence S) :
    SpinWaveClosed S := by
  exact And.intro E.dispersionRelationClosed E.magnonBandgapClosed

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse