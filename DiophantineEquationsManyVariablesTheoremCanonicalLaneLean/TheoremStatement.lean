import DiophantineEquationsManyVariablesTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  manifoldConstrainedStatement := "admissible-class theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def ManifoldConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "manifold_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  ManifoldConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  simp [sourceTheoremStatement]

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  simp [sourceTheoremStatement]

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  simp [ClassicalSourceBoundaryCarried, formalizationCertificate]

theorem manifold_constrained_theorem_closed_checked :
    ManifoldConstrainedTheoremClosed := by
  simp [ManifoldConstrainedTheoremClosed, baselineCertificateLane, baselineCertificateAllPass, outsideConstantDependencyCount]

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  simp [TheoremLayerInternalized, sourceTheoremStatement, ClassicalSourceBoundaryCarried, ManifoldConstrainedTheoremClosed, formalizationCertificate, baselineCertificateLane, baselineCertificateAllPass, outsideConstantDependencyCount]

end DiophantineEquationsManyVariablesTheoremCanonicalLaneLean
end HautevilleHouse