export booth

function booth(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  function f(x)
    return zero(eltype(x))
  end
  x0 = zeros(T, 2)

  function c(x)
    return [x[1] + 2 * x[2] - 7, 2 * x[1] + x[2] - 5]
  end
  return ADNLPModels.ADNLPModel(
    f,
    x0,
    c,
    zeros(T, 2),
    zeros(T, 2),
    minimize = true,
    name = "booth";
    kwargs...,
  )
end
