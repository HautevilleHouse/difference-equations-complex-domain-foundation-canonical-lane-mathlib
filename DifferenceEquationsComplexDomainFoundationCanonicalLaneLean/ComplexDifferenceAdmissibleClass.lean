import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsComplexDomainFoundationCanonicalLaneLean.ComplexDifferenceField

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure ComplexDifferenceAdmittedObject where
  field : ComplexDifferenceField
  closureCondition : DifferenceFieldClosed field

structure AdmissibleClass where
  object : ComplexDifferenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferenceFieldClosed A.object.field ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse