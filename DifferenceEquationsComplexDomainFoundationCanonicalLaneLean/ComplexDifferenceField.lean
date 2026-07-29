import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure ComplexDifferenceField where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additiveGroup : AddGroup carrier
  multiplicativeGroup : Group (Units carrier)
  ring : Ring carrier
  field : Field carrier
  charZero : CharZero carrier
  algebraicallyClosed : IsAlgClosed carrier
  derivation : carrier → carrier
  difference : carrier → carrier
  derivationLinear : LinearMap (RingHom.id carrier) carrier carrier := by
    infer_instance
  differenceLinear : LinearMap (RingHom.id carrier) carrier carrier := by
    infer_instance
  derivationLeibniz : ∀ a b : carrier, derivation (a * b) = derivation a * b + a * derivation b := by
    intro a b
    exact calc
      derivation (a * b) = derivation a * b + a * derivation b := by
        sorry
      _ = derivation a * b + a * derivation b := rfl
  differenceComm : ∀ a : carrier, derivation (difference a) = difference (derivation a) := by
    intro a
    sorry

structure DifferenceFieldClosed (F : ComplexDifferenceField) : Prop where
  fieldClosed : IsAlgClosed F.carrier
  derivationClosed : True
  differenceClosed : True

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse