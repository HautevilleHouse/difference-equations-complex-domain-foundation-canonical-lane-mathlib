import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure RiemannMappingPackage where
  domain : Type u
  complexStructure : ComplexStructure domain
  simplyConnected : Prop
  conformalEquivalence : Prop
  boundaryCorrespondence : Prop
  uniqueness : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedClosed : R.simplyConnected
  conformalEquivalenceClosed : R.conformalEquivalence
  boundaryCorrespondenceClosed : R.boundaryCorrespondence
  uniquenessClosed : R.uniqueness

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnected ∧ R.conformalEquivalence ∧ R.boundaryCorrespondence ∧ R.uniqueness

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedClosed (And.intro E.conformalEquivalenceClosed (And.intro E.boundaryCorrespondenceClosed E.uniquenessClosed))

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse