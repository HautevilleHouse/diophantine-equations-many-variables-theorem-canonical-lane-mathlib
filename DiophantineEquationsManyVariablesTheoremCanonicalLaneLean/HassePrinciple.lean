import canonicalLaneMathlib.AdmissibleClass
import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.ManyVariablesForm

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure HassePrinciplePackage {F : ManyVariablesForm} where
  localSolvabilityAdelic : Prop
  globalSolvability : Prop
  obstructionGroup : Type u
  brauerManinObstruction : Prop
  weakApproximation : Prop

structure HassePrincipleEvidence {F : ManyVariablesForm}
    (H : HassePrinciplePackage F) where
  localSolvabilityAdelicClosed : H.localSolvabilityAdelic
  globalSolvabilityClosed : H.globalSolvability
  brauerManinObstructionClosed : H.brauerManinObstruction
  weakApproximationClosed : H.weakApproximation

def HassePrincipleClosed {F : ManyVariablesForm}
    (H : HassePrinciplePackage F) : Prop :=
  H.localSolvabilityAdelic ∧ H.globalSolvability ∧
  H.brauerManinObstruction ∧ H.weakApproximation

theorem hasse_principle_closed_from_evidence {F : ManyVariablesForm}
    (H : HassePrinciplePackage F) (E : HassePrincipleEvidence H) :
    HassePrincipleClosed H :=
  And.intro E.localSolvabilityAdelicClosed
    (And.intro E.globalSolvabilityClosed
      (And.intro E.brauerManinObstructionClosed
        E.weakApproximationClosed))

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse
