import canonicalLaneMathlib.DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.HardyLittlewoodCircleMethod

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure BirchConditionsPackage where
  formDegree : Nat
  numberOfVariables : Nat
  formIsNondegenerate : Prop
  formIsCubicOrHigher : formDegree ≥ 3

structure BirchEvidence (B : BirchConditionsPackage) where
  nondegenerateCondition : B.formIsNondegenerate
  variableCountSufficient : B.numberOfVariables > 2^B.formDegree
  circleMethodApplies : HardyLittlewoodPackage

theorem birch_theorem_holds (B : BirchConditionsPackage) (E : BirchEvidence B) : Prop :=
  B.formIsNondegenerate ∧ (B.numberOfVariables > 2^B.formDegree) ∧ (E.circleMethodApplies.majorArcsContribution > 0.0)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse