import NavierLean.Euler
import NavierLean.Antieuler

namespace NavierLean

noncomputable section

theorem dualidad_euler_antieuler
  (M : TensorM) (t_star : Time) :
  ∃ (e : Euler) (a : Antieuler),
    e.M = M ∧ a.M = M ∧
    e.t = t_star ∧ a.t = t_star ∧
    (SignoH t_star t_star = 0) :=
by
  let e : Euler := { M := M, t := t_star, vorticidad := 2.9e13 }
  let a : Antieuler := { M := M, t := t_star, vorticidad := 3.4e-14 }
  use e, a
  refine ⟨rfl, rfl, rfl, rfl, ?_⟩
  simp [SignoH, SignoTemporal]

theorem resorte_antieuler
  (M : TensorM) (t_star : Time) :
  ∃ (e : Euler) (a : Antieuler),
    e.M = M ∧ a.M = M ∧
    e.t = t_star ∧ a.t = t_star ∧
    Singularidad e ∧
    Convergencia a ∧
    e.vorticidad * a.vorticidad ≤ 1 ∧
    e.vorticidad * a.vorticidad ≥ 0 :=
by
  let e : Euler := { M := M, t := t_star, vorticidad := 2.9e13 }
  let a : Antieuler := { M := M, t := t_star, vorticidad := 3.4e-14 }
  use e, a
  refine ⟨rfl, rfl, rfl, rfl, ?_, ?_, ?_, ?_⟩
  · unfold Singularidad VorticidadExplota
    norm_num
  · unfold Convergencia VorticidadConverge
    norm_num
  · norm_num
  · norm_num

end

end NavierLean
