import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure MagneticDomainPackage {L : LandauLifshitzPackage MagneticMediaPackage} where
  domainWallStructureModeled : Prop
  exchangeEnergyAccounted : Prop
  anisotropyEnergyAccounted : Prop
  demagnetizingFieldAccounted : Prop
  domainPatternStable : Prop

structure MagneticDomainEvidence {L : LandauLifshitzPackage MagneticMediaPackage}
    (D : MagneticDomainPackage L) where
  domainWallStructureModeledClosed : D.domainWallStructureModeled
  exchangeEnergyAccountedClosed : D.exchangeEnergyAccounted
  anisotropyEnergyAccountedClosed : D.anisotropyEnergyAccounted
  demagnetizingFieldAccountedClosed : D.demagnetizingFieldAccounted
  domainPatternStableClosed : D.domainPatternStable

def MagneticDomainClosed {L : LandauLifshitzPackage MagneticMediaPackage}
    (D : MagneticDomainPackage L) : Prop :=
  D.domainWallStructureModeled ∧ D.exchangeEnergyAccounted ∧
  D.anisotropyEnergyAccounted ∧ D.demagnetizingFieldAccounted ∧
  D.domainPatternStable

theorem magnetic_domain_closed_from_evidence
    {L : LandauLifshitzPackage MagneticMediaPackage}
    (D : MagneticDomainPackage L) (E : MagneticDomainEvidence D) :
    MagneticDomainClosed D := by
  exact And.intro E.domainWallStructureModeledClosed
    (And.intro E.exchangeEnergyAccountedClosed
      (And.intro E.anisotropyEnergyAccountedClosed
        (And.intro E.demagnetizingFieldAccountedClosed E.domainPatternStableClosed)))

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse
