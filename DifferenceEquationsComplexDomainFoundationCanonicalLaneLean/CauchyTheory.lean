import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type u
  complexStructure : ComplexStructure domain
  holomorphicFunctionClass : Prop
  cauchyIntegralFormula : Prop
  cauchyEstimates : Prop
  analyticContinuation : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  holomorphicFunctionClassClosed : C.holomorphicFunctionClass
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  cauchyEstimatesClosed : C.cauchyEstimates
  analyticContinuationClosed : C.analyticContinuation

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.holomorphicFunctionClass ∧ C.cauchyIntegralFormula ∧ C.cauchyEstimates ∧ C.analyticContinuation

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.holomorphicFunctionClassClosed (And.intro E.cauchyIntegralFormulaClosed (And.intro E.cauchyEstimatesClosed E.analyticContinuationClosed))

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse