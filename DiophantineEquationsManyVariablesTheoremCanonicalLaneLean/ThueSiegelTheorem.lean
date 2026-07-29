import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.RationalPoints

/-!
# Thue–Siegel Theorem Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure ThueSiegelPackage {P : RationalPointsPackage} where
  degreeCondition : Prop
  approximationMethod : Prop
  finitenessResult : Prop
  effectiveBound : Prop

structure ThueSiegelEvidence {P : RationalPointsPackage} (T : ThueSiegelPackage P) where
  degreeConditionClosed : T.degreeCondition
  approximationMethodClosed : T.approximationMethod
  finitenessResultClosed : T.finitenessResult
  effectiveBoundClosed : T.effectiveBound

def ThueSiegelClosed {P : RationalPointsPackage} (T : ThueSiegelPackage P) : Prop :=
  T.degreeCondition ∧ T.approximationMethod ∧ T.finitenessResult ∧ T.effectiveBound

theorem thue_siegel_closed_from_evidence
    {P : RationalPointsPackage} (T : ThueSiegelPackage P) (E : ThueSiegelEvidence T) :
    ThueSiegelClosed T := by
  exact And.intro E.degreeConditionClosed
    (And.intro E.approximationMethodClosed
      (And.intro E.finitenessResultClosed E.effectiveBoundClosed))

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse