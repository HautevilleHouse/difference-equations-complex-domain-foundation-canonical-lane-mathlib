import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainFoundationCanonicalLaneLean

structure RiemannCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  smoothThreeManifold : Prop
  metricSmooth : Prop
  riemannTensorLawful : Prop
  ricciTensorContractedFromRiemann : Prop
  scalarCurvatureTraceOfRicci : Prop

structure RiemannianCurvatureEvidence (G : RiemannCurvaturePackage) where
  smoothThreeManifoldClosed : G.smoothThreeManifold
  metricSmoothClosed : G.metricSmooth
  riemannTensorLawfulClosed : G.riemannTensorLawful
  ricciTensorContractedFromRiemannClosed : G.ricciTensorContractedFromRiemann
  scalarCurvatureTraceOfRicciClosed : G.scalarCurvatureTraceOfRicci

def RiemannianCurvatureClosed (G : RiemannCurvaturePackage) : Prop :=
  G.smoothThreeManifold ∧
  G.metricSmooth ∧
  G.riemannTensorLawful ∧
  G.ricciTensorContractedFromRiemann ∧
  G.scalarCurvatureTraceOfRicci

theorem riemannian_curvature_closed_from_evidence
    (G : RiemannCurvaturePackage) (E : RiemannianCurvatureEvidence G) :
    RiemannianCurvatureClosed G := by
  exact And.intro E.smoothThreeManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.riemannTensorLawfulClosed
        (And.intro E.ricciTensorContractedFromRiemannClosed
          E.scalarCurvatureTraceOfRicciClosed)))

end DifferenceEquationsComplexDomainFoundationCanonicalLaneLean
end HautevilleHouse