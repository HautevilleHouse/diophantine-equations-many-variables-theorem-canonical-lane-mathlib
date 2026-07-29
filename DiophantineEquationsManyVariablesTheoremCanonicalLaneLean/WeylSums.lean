import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure WeylSumPackage (A : AdmissibleClass) where
  exponentialSumDefined : Prop
  weylInequality : Prop
  vanDerCorputMethod : Prop

structure WeylSumEvidence {A : AdmissibleClass} (W : WeylSumPackage A) where
  exponentialSumDefinedClosed : W.exponentialSumDefined
  weylInequalityClosed : W.weylInequality
  vanDerCorputMethodClosed : W.vanDerCorputMethod

def WeylSumClosed {A : AdmissibleClass} (W : WeylSumPackage A) : Prop :=
  W.exponentialSumDefined ∧ W.weylInequality ∧ W.vanDerCorputMethod

theorem weyl_sum_closed_from_evidence
    {A : AdmissibleClass} (W : WeylSumPackage A) (E : WeylSumEvidence W) :
    WeylSumClosed W := by
  exact And.intro E.exponentialSumDefinedClosed
    (And.intro E.weylInequalityClosed E.vanDerCorputMethodClosed)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse