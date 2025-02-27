hs48_meta = Dict(
  :nvar => 5,
  :variable_nvar => false,
  :ncon => 2,
  :variable_ncon => false,
  :minimize => true,
  :name => "hs48",
  :has_equalities_only => true,
  :has_inequalities_only => false,
  :has_bounds => false,
  :has_fixed_variables => false,
  :objtype => :least_squares,
  :contype => :linear,
  :best_known_lower_bound => -Inf,
  :best_known_upper_bound => 84.0,
  :is_feasible => true,
  :defined_everywhere => missing,
  :origin => :unknown,
)
get_hs48_nvar(; n::Integer = default_nvar, kwargs...) = 5
get_hs48_ncon(; n::Integer = default_nvar, kwargs...) = 2
get_hs48_nlin(; n::Integer = default_nvar, kwargs...) = 2
get_hs48_nnln(; n::Integer = default_nvar, kwargs...) = 0
get_hs48_nequ(; n::Integer = default_nvar, kwargs...) = 2
get_hs48_nineq(; n::Integer = default_nvar, kwargs...) = 0
