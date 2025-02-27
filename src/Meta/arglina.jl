arglina_meta = Dict(
  :nvar => 100,
  :variable_nvar => true,
  :ncon => 0,
  :variable_ncon => false,
  :minimize => true,
  :name => "arglina",
  :has_equalities_only => false,
  :has_inequalities_only => false,
  :has_bounds => false,
  :has_fixed_variables => false,
  :objtype => :least_squares,
  :contype => :unconstrained,
  :best_known_lower_bound => -Inf,
  :best_known_upper_bound => 500.0,
  :is_feasible => true,
  :defined_everywhere => missing,
  :origin => :unknown,
)
get_arglina_nvar(; n::Integer = default_nvar, kwargs...) = 1 * n + 0
get_arglina_ncon(; n::Integer = default_nvar, kwargs...) = 0
get_arglina_nlin(; n::Integer = default_nvar, kwargs...) = 0
get_arglina_nnln(; n::Integer = default_nvar, kwargs...) = 0
get_arglina_nequ(; n::Integer = default_nvar, kwargs...) = 0
get_arglina_nineq(; n::Integer = default_nvar, kwargs...) = 0
