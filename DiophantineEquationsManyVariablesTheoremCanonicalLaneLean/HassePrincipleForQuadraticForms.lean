import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure HassePrincipleQuadraticFormsPackage where
  quadraticForm : Type u
  localGlobalPrinciple : Prop
  isotropyCondition : Prop
  dimensionSufficientlyLarge : Prop

structure HassePrincipleQuadraticFormsEvidence (H : HassePrincipleQuadraticFormsPackage) where
  localGlobalPrincipleClosed : H.localGlobalPrinciple
  isotropyConditionClosed : H.isotropyCondition
  dimensionSufficientlyLargeClosed : H.dimensionSufficientlyLarge

def HassePrincipleQuadraticFormsClosed (H : HassePrincipleQuadraticFormsPackage) : Prop :=
  H.localGlobalPrinciple ∧ H.isotropyCondition ∧ H.dimensionSufficientlyLarge

theorem hasse_principle_quadratic_forms_closed_from_evidence
    (H : HassePrincipleQuadraticFormsPackage)
    (E : HassePrincipleQuadraticFormsEvidence H) : HassePrincipleQuadraticFormsClosed H := by
  exact And.intro E.localGlobalPrincipleClosed
    (And.intro E.isotropyConditionClosed E.dimensionSufficientlyLargeClosed)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse