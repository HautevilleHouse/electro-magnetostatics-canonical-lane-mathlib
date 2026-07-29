import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure MagneticDomainPackage where
  domainWallEnergy : Prop
  strayField : Prop
  domainPattern : Prop
  multiscaleStructure : Prop

structure MagneticDomainEvidence (D : MagneticDomainPackage) where
  domainWallEnergyClosed : D.domainWallEnergy
  strayFieldClosed : D.strayField
  domainPatternClosed : D.domainPattern
  multiscaleStructureClosed : D.multiscaleStructure

def MagneticDomainClosed (D : MagneticDomainPackage) : Prop :=
  D.domainWallEnergy ∧ D.strayField ∧ D.domainPattern ∧ D.multiscaleStructure

theorem magnetic_domain_closed_from_evidence (D : MagneticDomainPackage)
    (E : MagneticDomainEvidence D) : MagneticDomainClosed D := by
  exact And.intro E.domainWallEnergyClosed
    (And.intro E.strayFieldClosed (And.intro E.domainPatternClosed E.multiscaleStructureClosed))

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse
