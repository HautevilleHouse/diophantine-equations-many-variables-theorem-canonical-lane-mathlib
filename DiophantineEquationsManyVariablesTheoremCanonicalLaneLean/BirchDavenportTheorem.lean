import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure BirchDavenportPackage (A : AdmissibleClass) where
  translationInvariance : Prop
  convolutionProperty : Prop
  lowerBound : Prop

structure BirchDavenportEvidence {A : AdmissibleClass} (B : BirchDavenportPackage A) where
  translationInvarianceClosed : B.translationInvariance
  convolutionPropertyClosed : B.convolutionProperty
  lowerBoundClosed : B.lowerBound

def BirchDavenportClosed {A : AdmissibleClass} (B : BirchDavenportPackage A) : Prop :=
  B.translationInvariance ∧ B.convolutionProperty ∧ B.lowerBound

theorem birch_davenport_closed_from_evidence
    {A : AdmissibleClass} (B : BirchDavenportPackage A) (E : BirchDavenportEvidence B) :
    BirchDavenportClosed B := by
  exact And.intro E.translationInvarianceClosed
    (And.intro E.convolutionPropertyClosed E.lowerBoundClosed)

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse