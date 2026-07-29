import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ComplexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse