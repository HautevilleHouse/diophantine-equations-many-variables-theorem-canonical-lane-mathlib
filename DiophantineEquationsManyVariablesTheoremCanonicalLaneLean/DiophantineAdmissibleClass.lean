import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure DiophantineAdmittedObject where
  polynomialSystem : Type u
  numberOfVariables : Nat
  numberOfEquations : Nat
  integerSolutionExists : Prop
  conclusion : integerSolutionExists

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse