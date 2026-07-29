import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsComplexDomainFoundationCanonicalLaneLean.ComplexDifferenceField

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure AnalyticDifferenceEqPackage (F : ComplexDifferenceField) where
  domain : Set ℂ
  order : ℕ
  coefficients : ℕ → F.carrier
  solutionSpace : Submodule ℂ (ℂ → ℂ)
  regularSingularity : Prop
  indicialPolynomial : Prop
  analyticContinuation : Prop
  monodromyRepresentation : Prop

structure AnalyticDifferenceEqEvidence {F : ComplexDifferenceField} (P : AnalyticDifferenceEqPackage F) where
  regularSingularityClosed : P.regularSingularity
  indicialPolynomialClosed : P.indicialPolynomial
  analyticContinuationClosed : P.analyticContinuation
  monodromyRepresentationClosed : P.monodromyRepresentation

def AnalyticDifferenceEqClosed {F : ComplexDifferenceField} (P : AnalyticDifferenceEqPackage F) : Prop :=
  P.regularSingularity ∧ P.indicialPolynomial ∧ P.analyticContinuation ∧ P.monodromyRepresentation

theorem analytic_diff_eq_closed_from_evidence {F : ComplexDifferenceField} (P : AnalyticDifferenceEqPackage F) (E : AnalyticDifferenceEqEvidence P) : AnalyticDifferenceEqClosed P :=
  And.intro E.regularSingularityClosed (And.intro E.indicialPolynomialClosed (And.intro E.analyticContinuationClosed E.monodromyRepresentationClosed))

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse