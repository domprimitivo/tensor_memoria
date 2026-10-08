import Mathlib

set_option linter.unusedVariables false

namespace NavierLean

noncomputable section

abbrev Time := ℝ

structure State where
  M : ℝ
  t : Time

def Evolution (s : State) (t : Time) : State :=
  { M := s.M, t := t }

def L (M : ℝ) : ℝ := -M
def D (M : ℝ) : ℝ := M
def S (M : ℝ) : ℝ := 0

end

end NavierLean