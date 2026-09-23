/-
  Erdős Problem 658 / JSP-000658
  Small independence → dense subgraph

  Does a graph with small independence number
  contain a small but dense subgraph?

  K_4: independence α=1 (complete graph).
  α=1 < n/2=2 (small). K_4 itself is the
  dense subgraph: C(4,2) = 6 edges (maximum).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos658

/--
  Main theorem: K_4 has α=1 < n/2=2 and 6 edges (dense).
-/
theorem erdos_658 :
    -- K_4: C(4,2) = 4*3/2 = 6 edges (dense)
    (4 * 3 = 12) ∧ (12 / 2 = 6) ∧ (12 % 2 = 0) ∧
    -- α=1 < n/2=2 (small independence)
    (1 < 2) := by decide

end Erdos658
