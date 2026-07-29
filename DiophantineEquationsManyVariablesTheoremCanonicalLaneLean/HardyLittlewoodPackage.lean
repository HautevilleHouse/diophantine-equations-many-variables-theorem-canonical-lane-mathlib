import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.CircleMethod

/-!
# Hardy–Littlewood Circle Method Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure HardyLittlewoodPackage {P : RationalPointsPackage} {T : ThueSiegelPackage P} {C : CircleMethodPackage P T} where
  localGlobalPrinciple : Prop
  congruenceCondition : Prop
  singularIntegral : Prop
  asymptoticFormula : Prop

structure HardyLittlewoodEvidence {P : RationalPointsPackage} {T : ThueSiegelPackage P} {C : CircleMethodPackage P T} (H : HardyLittlewoodPackage P T C) where
  localGlobalPrincipleClosed : H.localGlobalPrinciple
  congruenceConditionClosed : H.congruenceCondition
  singularIntegralClosed : H.singularIntegral
  asymptoticFormulaClosed : H.asymptoticFormula

def HardyLittlewoodClosed {P : RationalPointsPackage} {T : ThueSiegelPackage P} {C : CircleMethodPackage P T} (H : HardyLittlewoodPackage P T C) : Prop :=
  H.localGlobalPrinciple ∧ H.congruenceCondition ∧ H.singularIntegral ∧ H.asymptoticFormula

theorem hardy_littlewood_closed_from_evidence
    {P : RationalPointsPackage} {T : ThueSiegelPackage P} {C : CircleMethodPackage P T} (H : HardyLittlewoodPackage P T C) (E : HardyLittlewoodEvidence H) :
    HardyLittlewoodClosed H := by
  exact And.intro E.localGlobalPrincipleClosed
    (And.intro E.congruenceConditionClosed
      (And.intro E.singularIntegralClosed E.asymptoticFormulaClosed))

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse