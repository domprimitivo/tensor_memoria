import NavierLean.Core

namespace NavierLean

noncomputable section

structure TensorM where
  M0 : ℝ
  M1 : ℝ
  M2 : ℝ
  M3 : ℝ
  M4 : ℝ
  M5 : ℝ
  M6 : ℝ

def SignoTemporal (t : ℝ) (t_star : ℝ) : ℝ :=
  if t < t_star then -1
  else if t = t_star then 0
  else 1

def TensorConsistente (M : TensorM) : Prop :=
  M.M0 > 0 ∧ M.M1 > 0 ∧ M.M2 > 0 ∧
  M.M3 > 0 ∧ M.M4 ≥ 0 ∧ M.M5 ≥ 0 ∧ M.M6 ≥ 0

end

end NavierLean