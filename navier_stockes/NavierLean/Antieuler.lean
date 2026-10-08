import NavierLean.Flecha

namespace NavierLean

noncomputable section

structure Antieuler where
  M : TensorM
  t : Time
  vorticidad : ℝ

def VorticidadConverge (a : Antieuler) : Prop :=
  a.vorticidad < 0.001

def Convergencia (a : Antieuler) : Prop :=
  VorticidadConverge a

end

end NavierLean