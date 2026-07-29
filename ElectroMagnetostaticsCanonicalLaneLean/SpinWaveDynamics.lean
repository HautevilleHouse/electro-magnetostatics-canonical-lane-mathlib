import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure SpinWaveDynamicsPackage where
  dispersionRelation : Prop
  magnonExcitation : Prop
  exchangeInteraction : Prop
  anisotropyEnergy : Prop
  externalFieldEffect : Prop

structure SpinWaveDynamicsEvidence (S : SpinWaveDynamicsPackage) where
  dispersionRelationClosed : S.dispersionRelation
  magnonExcitationClosed : S.magnonExcitation
  exchangeInteractionClosed : S.exchangeInteraction
  anisotropyEnergyClosed : S.anisotropyEnergy
  externalFieldEffectClosed : S.externalFieldEffect

def SpinWaveDynamicsClosed (S : SpinWaveDynamicsPackage) : Prop :=
  S.dispersionRelation ∧ S.magnonExcitation ∧ S.exchangeInteraction ∧
  S.anisotropyEnergy ∧ S.externalFieldEffect

theorem spin_wave_dynamics_closed_from_evidence
    (S : SpinWaveDynamicsPackage) (E : SpinWaveDynamicsEvidence S) :
    SpinWaveDynamicsClosed S := by
  exact And.intro E.dispersionRelationClosed
    (And.intro E.magnonExcitationClosed
      (And.intro E.exchangeInteractionClosed
        (And.intro E.anisotropyEnergyClosed E.externalFieldEffectClosed)))

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse