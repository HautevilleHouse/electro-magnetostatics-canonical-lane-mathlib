import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

structure FieldEquationsPackage (M : MagneticSystem) where
  maxwellMagnetostatic : Prop
  ampereLaw : Prop
  gaussLawMagnetic : Prop
  constitutiveRelation : Prop

structure FieldEquationsEvidence {M : MagneticSystem} (F : FieldEquationsPackage M) where
  maxwellMagnetostaticClosed : F.maxwellMagnetostatic
  ampereLawClosed : F.ampereLaw
  gaussLawMagneticClosed : F.gaussLawMagnetic
  constitutiveRelationClosed : F.constitutiveRelation

def FieldEquationsClosed {M : MagneticSystem} (F : FieldEquationsPackage M) : Prop :=
  F.maxwellMagnetostatic ∧ F.ampereLaw ∧ F.gaussLawMagnetic ∧ F.constitutiveRelation

theorem field_equations_closed_from_evidence
    {M : MagneticSystem} (F : FieldEquationsPackage M) (E : FieldEquationsEvidence F) :
    FieldEquationsClosed F := by
  exact And.intro E.maxwellMagnetostaticClosed
    (And.intro E.ampereLawClosed
      (And.intro E.gaussLawMagneticClosed E.constitutiveRelationClosed))

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse