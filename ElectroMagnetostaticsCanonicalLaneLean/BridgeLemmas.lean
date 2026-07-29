import ElectroMagnetostaticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectroMagnetostaticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MagnetostaticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectroMagnetostaticsCanonicalLaneLean
end HautevilleHouse