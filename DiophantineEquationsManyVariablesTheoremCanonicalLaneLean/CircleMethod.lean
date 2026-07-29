import canonicalLaneMathlib.AdmissibleClass
import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.ManyVariablesForm

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure CircleMethodPackage {F : ManyVariablesForm} where
  majorArcsDecomposition : Prop
  minorArcsBound : Prop
  singularSeriesConvergent : Prop
  singularIntegralPositivity : Prop
  asymptoticFormula : Prop

structure CircleMethodEvidence {F : ManyVariablesForm}
    (C : CircleMethodPackage F) where
  majorArcsDecompositionClosed : C.majorArcsDecomposition
  minorArcsBoundClosed : C.minorArcsBound
  singularSeriesConvergentClosed : C.singularSeriesConvergent
  singularIntegralPositivityClosed : C.singularIntegralPositivity
  asymptoticFormulaClosed : C.asymptoticFormula

def CircleMethodClosed {F : ManyVariablesForm}
    (C : CircleMethodPackage F) : Prop :=
  C.majorArcsDecomposition ∧ C.minorArcsBound ∧
  C.singularSeriesConvergent ∧ C.singularIntegralPositivity ∧
  C.asymptoticFormula

theorem circle_method_closed_from_evidence {F : ManyVariablesForm}
    (C : CircleMethodPackage F) (E : CircleMethodEvidence C) :
    CircleMethodClosed C :=
  And.intro E.majorArcsDecompositionClosed
    (And.intro E.minorArcsBoundClosed
      (And.intro E.singularSeriesConvergentClosed
        (And.intro E.singularIntegralPositivityClosed
          E.asymptoticFormulaClosed)))

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse
