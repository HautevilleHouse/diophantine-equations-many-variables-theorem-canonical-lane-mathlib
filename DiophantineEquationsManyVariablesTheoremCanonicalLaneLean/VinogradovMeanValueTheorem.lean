import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure VinogradovMeanValuePackage (A : AdmissibleClass) where
  meanValueIntegral : Prop
  optimalBound : Prop
  diagonalCubesTechnique : Prop

structure VinogradovMeanValueEvidence {A : AdmissibleClass} (V : VinogradovMeanValuePackage A) where
  meanValueIntegralClosed : V.meanValueIntegral
  optimalBoundClosed : V.optimalBound
  diagonalCubesTechniqueClosed : V.diagonalCubesTechnique

def VinogradovMeanValueClosed {A : AdmissibleClass} (V : VinogradovMeanValuePackage A) : Prop :=
  V.meanValueIntegral ∧ V.optimalBound ∧ V.diagonalCubesTechnique

theorem vinogradov_mean_value_closed_from_evidence
    {A : AdmissibleClass} (V : VinogradovMeanValuePackage A) (E : VinogradovMeanValueEvidence V) :
    VinogradovMeanValueClosed V := by
  exact And.intro E.meanValueIntegralClosed
    (And.intro E.optimalBoundClosed E.diagonalCubesTechniqueClosed)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse