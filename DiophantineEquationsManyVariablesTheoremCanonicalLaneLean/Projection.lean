import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure DiophantineEndgameState where
  object : AdmissibleClass

def diophantineProjection (x : DiophantineEndgameState) : DiophantineEndgameState := x

theorem diophantine_projection_idempotent (x : DiophantineEndgameState) :
    diophantineProjection (diophantineProjection x) = diophantineProjection x := by
  rfl

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse