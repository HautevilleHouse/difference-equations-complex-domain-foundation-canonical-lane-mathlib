import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsComplexDomainFoundationCanonicalLaneLean.AnalyticDifferenceEquations

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure RiemannHilbertPackage {F : ComplexDifferenceField} (P : AnalyticDifferenceEqPackage F) where
  stokesData : Prop
  connectionCoefficients : Prop
  monodromyData : Prop
  riemannHilbertFunctor : Prop

structure RiemannHilbertEvidence {F : ComplexDifferenceField} {P : AnalyticDifferenceEqPackage F} (R : RiemannHilbertPackage P) where
  stokesDataClosed : R.stokesData
  connectionCoefficientsClosed : R.connectionCoefficients
  monodromyDataClosed : R.monodromyData
  riemannHilbertFunctorClosed : R.riemannHilbertFunctor

def RiemannHilbertClosed {F : ComplexDifferenceField} {P : AnalyticDifferenceEqPackage F} (R : RiemannHilbertPackage P) : Prop :=
  R.stokesData ∧ R.connectionCoefficients ∧ R.monodromyData ∧ R.riemannHilbertFunctor

theorem riemann_hilbert_closed_from_evidence {F : ComplexDifferenceField} {P : AnalyticDifferenceEqPackage F} (R : RiemannHilbertPackage P) (E : RiemannHilbertEvidence R) : RiemannHilbertClosed R :=
  And.intro E.stokesDataClosed (And.intro E.connectionCoefficientsClosed (And.intro E.monodromyDataClosed E.riemannHilbertFunctorClosed))

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse