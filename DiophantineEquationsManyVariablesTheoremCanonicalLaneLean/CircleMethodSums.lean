import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure CircleMethodSumsPackage where
  majorArcsContribution : Prop
  minorArcsBound : Prop
  exponentialSumEstimates : Prop
  singularSeriesConvergence : Prop

structure CircleMethodSumsEvidence (C : CircleMethodSumsPackage) where
  majorArcsContributionClosed : C.majorArcsContribution
  minorArcsBoundClosed : C.minorArcsBound
  exponentialSumEstimatesClosed : C.exponentialSumEstimates
  singularSeriesConvergenceClosed : C.singularSeriesConvergence

def CircleMethodSumsClosed (C : CircleMethodSumsPackage) : Prop :=
  C.majorArcsContribution ∧ C.minorArcsBound ∧
  C.exponentialSumEstimates ∧ C.singularSeriesConvergence

theorem circle_method_sums_closed_from_evidence (C : CircleMethodSumsPackage)
    (E : CircleMethodSumsEvidence C) : CircleMethodSumsClosed C := by
  exact And.intro E.majorArcsContributionClosed
    (And.intro E.minorArcsBoundClosed
      (And.intro E.exponentialSumEstimatesClosed E.singularSeriesConvergenceClosed))

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse