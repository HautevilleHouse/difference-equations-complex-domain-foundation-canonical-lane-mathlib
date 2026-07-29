import DifferenceEquationsComplexDomainFoundationCanonicalLaneLean.Basic
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure DifferenceEquationsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferenceEquationsAdmittedObject where
  space : DifferenceEquationsSpace
  complexDomainOpen : Prop
  differenceEquationAnalytic : Prop
  analyticSolutionExists : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionIsAnalytic : Prop
  conclusion : solutionIsAnalytic

structure DifferenceEquationsEndgameState where
  object : DifferenceEquationsAdmittedObject

def DifferenceEquationsWitnessClosed (O : DifferenceEquationsAdmittedObject) : Prop :=
  O.solutionIsAnalytic

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse