import NavierLean.Flecha

namespace NavierLean

noncomputable section

structure Euler where
  M : TensorM
  t : Time
  vorticidad : ℝ

def VorticidadExplota (e : Euler) : Prop :=
  e.vorticidad > 1000

def Singularidad (e : Euler) : Prop :=
  VorticidadExplota e

end

end NavierLean