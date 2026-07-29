import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure ComplexSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ComplexAdmittedObject where
  space : ComplexSpace
  domain : Prop
  discreteSet : Prop
  differenceEquationDefined : Prop
  conclusion : differenceEquationDefined

def ComplexWitnessClosed (O : ComplexAdmittedObject) : Prop :=
  O.differenceEquationDefined

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse