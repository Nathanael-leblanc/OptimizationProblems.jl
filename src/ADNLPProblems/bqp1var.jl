export bqp1var

function bqp1var(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  function f(x)
    return x[1] + x[1]^2
  end
  x0 = T[0.25,]
  function c(x)
    return x
  end
  lcon = T[0.0,]
  ucon = T[0.5,]

  return ADNLPModels.ADNLPModel(f, x0, c, lcon, ucon, name = "bqp1var", minimize = true; kwargs...)
end
