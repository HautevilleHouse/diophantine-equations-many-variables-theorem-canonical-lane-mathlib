import canonicalLaneMathlib.AdmissibleClass
import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.ManyVariablesForm
import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.HassePrinciple
import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.CircleMethod

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

def ConstrainedDiophantineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diophantine_endgame (A : AdmissibleClass) :
    ConstrainedDiophantineClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse
