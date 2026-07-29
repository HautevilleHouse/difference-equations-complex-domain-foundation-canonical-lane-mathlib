import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure ValueDistributionPackage where
  domain : Type u
  complexStructure : ComplexStructure domain
  nevanlinnaTheory : Prop
  deficiencyRelation : Prop
  picardTheorem : Prop
  juliaSet : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  nevanlinnaTheoryClosed : V.nevanlinnaTheory
  deficiencyRelationClosed : V.deficiencyRelation
  picardTheoremClosed : V.picardTheorem
  juliaSetClosed : V.juliaSet

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.nevanlinnaTheory ∧ V.deficiencyRelation ∧ V.picardTheorem ∧ V.juliaSet

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.nevanlinnaTheoryClosed (And.intro E.deficiencyRelationClosed (And.intro E.picardTheoremClosed E.juliaSetClosed))

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse