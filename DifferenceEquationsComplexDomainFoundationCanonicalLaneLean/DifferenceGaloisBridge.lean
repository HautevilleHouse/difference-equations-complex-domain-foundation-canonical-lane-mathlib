import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsComplexDomainFoundationCanonicalLaneLean.ComplexDifferenceAdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferenceFieldClosed A.object.field

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.closureCondition

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse