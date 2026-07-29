import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure ManyVariablesForm where
  variableCount : ℕ
  coefficients : ℤ → ℤ
  degree : ℕ
  homogeneous : Bool
  equationCoefficients : List ℤ
  equationDegrees : List ℕ

structure ManyVariablesFormEvidence (F : ManyVariablesForm) where
  variableCountClosed : F.variableCount = 0 → False
  coefficientsClosed : F.coefficients 0 = 0 → False
  degreeClosed : F.degree ≥ 1
  homogeneousClosed : F.homogeneous = True → F.equationDegrees = [F.degree]
  equationCoefficientsClosed : F.equationCoefficients ≠ []
  equationDegreesClosed : F.equationDegrees ≠ []

def ManyVariablesFormClosed (F : ManyVariablesForm) : Prop :=
  F.variableCount ≠ 0 ∧ F.coefficients 0 ≠ 0 ∧ F.degree ≥ 1 ∧
  (F.homogeneous → F.equationDegrees = [F.degree]) ∧
  F.equationCoefficients ≠ [] ∧ F.equationDegrees ≠ []

theorem many_variables_form_closed_from_evidence (F : ManyVariablesForm)
    (E : ManyVariablesFormEvidence F) : ManyVariablesFormClosed F :=
  And.intro E.variableCountClosed
    (And.intro E.coefficientsClosed
      (And.intro E.degreeClosed
        (And.intro E.homogeneousClosed
          (And.intro E.equationCoefficientsClosed
            E.equationDegreesClosed))))

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse
