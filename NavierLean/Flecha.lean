import NavierLean.TensorM

namespace NavierLean

noncomputable section

structure CambioFlecha where
  t_star : Time
  H : ℝ
  signo : ℝ

def SignoH (t : Time) (t_star : Time) : ℝ :=
  SignoTemporal t t_star

def HuellaTopologica (c : CambioFlecha) : ℝ :=
  c.H * c.signo

end

end NavierLean