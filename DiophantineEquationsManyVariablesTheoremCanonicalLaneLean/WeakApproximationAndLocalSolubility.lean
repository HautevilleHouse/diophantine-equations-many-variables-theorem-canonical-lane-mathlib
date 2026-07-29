import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure WeakApproximationPackage where
  localFields : Type u
  weakApproximationProperty : Prop
  localSolubility : Prop
  productFormulaCompatibility : Prop

structure WeakApproximationEvidence (W : WeakApproximationPackage) where
  weakApproximationPropertyClosed : W.weakApproximationProperty
  localSolubilityClosed : W.localSolubility
  productFormulaCompatibilityClosed : W.productFormulaCompatibility

def WeakApproximationClosed (W : WeakApproximationPackage) : Prop :=
  W.weakApproximationProperty ∧ W.localSolubility ∧ W.productFormulaCompatibility

theorem weak_approximation_closed_from_evidence (W : WeakApproximationPackage)
    (E : WeakApproximationEvidence W) : WeakApproximationClosed W := by
  exact And.intro E.weakApproximationPropertyClosed
    (And.intro E.localSolubilityClosed E.productFormulaCompatibilityClosed)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse