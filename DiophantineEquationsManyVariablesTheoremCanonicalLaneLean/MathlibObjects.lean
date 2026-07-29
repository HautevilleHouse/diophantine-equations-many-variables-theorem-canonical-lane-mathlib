import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure DiophantineSpace where
  carrier : Type
  variables : Nat
  equations : List (List ℤ)

structure DiophantineAdmittedObject where
  space : DiophantineSpace
  hasManyVariables : Prop
  solvabilityCondition : Prop
  explicitSolution : Type
  conclusion : solvabilityCondition → explicitSolution

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.solvabilityCondition

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse