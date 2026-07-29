import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsComplexDomainFoundationCanonicalLaneLean.DifferenceGaloisBridge

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

def ConstrainedDifferenceEqClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_eq_endgame (A : AdmissibleClass) : ConstrainedDifferenceEqClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse