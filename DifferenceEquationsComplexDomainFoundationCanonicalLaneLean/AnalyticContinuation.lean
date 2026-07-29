import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure AnalyticContinuationPackage where
  domain : Type u
  complexStructure : ComplexStructure domain
  chainOfDisks : Prop
  identityTheorem : Prop
  monodromy : Prop
  continuationUniqueness : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  chainOfDisksClosed : A.chainOfDisks
  identityTheoremClosed : A.identityTheorem
  monodromyClosed : A.monodromy
  continuationUniquenessClosed : A.continuationUniqueness

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.chainOfDisks ∧ A.identityTheorem ∧ A.monodromy ∧ A.continuationUniqueness

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.chainOfDisksClosed (And.intro E.identityTheoremClosed (And.intro E.monodromyClosed E.continuationUniquenessClosed))

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse