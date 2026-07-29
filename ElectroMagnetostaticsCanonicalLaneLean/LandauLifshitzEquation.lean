import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure LandauLifshitzPackage (M : MagneticMediaPackage) where
  magnetizationDynamics : Prop
  effectiveFieldModeled : Prop
  dampingTermIncluded : Prop
  precessionTermIncluded : Prop
  equationWellPosed : Prop

structure LandauLifshitzEvidence {M : MagneticMediaPackage} (L : LandauLifshitzPackage M) where
  magnetizationDynamicsClosed : L.magnetizationDynamics
  effectiveFieldModeledClosed : L.effectiveFieldModeled
  dampingTermIncludedClosed : L.dampingTermIncluded
  precessionTermIncludedClosed : L.precessionTermIncluded
  equationWellPosedClosed : L.equationWellPosed

def LandauLifshitzClosed {M : MagneticMediaPackage} (L : LandauLifshitzPackage M) : Prop :=
  L.magnetizationDynamics ∧ L.effectiveFieldModeled ∧
  L.dampingTermIncluded ∧ L.precessionTermIncluded ∧
  L.equationWellPosed

theorem landau_lifshitz_closed_from_evidence
    {M : MagneticMediaPackage} (L : LandauLifshitzPackage M)
    (E : LandauLifshitzEvidence L) : LandauLifshitzClosed L := by
  exact And.intro E.magnetizationDynamicsClosed
    (And.intro E.effectiveFieldModeledClosed
      (And.intro E.dampingTermIncludedClosed
        (And.intro E.precessionTermIncludedClosed E.equationWellPosedClosed)))

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse
