hs57_meta = Dict(
  :nvar => 2,
  :variable_nvar => false,
  :ncon => 1,
  :variable_ncon => false,
  :minimize => true,
  :name => "hs57",
  :has_equalities_only => false,
  :has_inequalities_only => true,
  :has_bounds => true,
  :has_fixed_variables => false,
  :objtype => :least_squares,
  :contype => :general,
  :best_known_lower_bound => -Inf,
  :best_known_upper_bound => 0.030798601687933858,
  :is_feasible => true,
  :defined_everywhere => missing,
  :origin => :unknown,
)
get_hs57_nvar(; n::Integer = default_nvar, kwargs...) = 2
get_hs57_ncon(; n::Integer = default_nvar, kwargs...) = 1
get_hs57_nlin(; n::Integer = default_nvar, kwargs...) = 0
get_hs57_nnln(; n::Integer = default_nvar, kwargs...) = 1
get_hs57_nequ(; n::Integer = default_nvar, kwargs...) = 0
get_hs57_nineq(; n::Integer = default_nvar, kwargs...) = 1
