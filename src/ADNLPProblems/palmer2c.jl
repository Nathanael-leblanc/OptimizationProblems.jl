export palmer2c

function palmer2c(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  X = [
    -1.745329,
    -1.570796,
    -1.396263,
    -1.221730,
    -1.047198,
    -0.937187,
    -0.872665,
    -0.698132,
    -0.523599,
    -0.349066,
    -0.174533,
    0.0,
    0.174533,
    0.349066,
    0.523599,
    0.698132,
    0.872665,
    0.937187,
    1.047198,
    1.221730,
    1.396263,
    1.570796,
    1.745329,
  ]

  Y = [
    72.676767,
    40.149455,
    18.8548,
    6.4762,
    0.8596,
    0.00000,
    0.2730,
    3.2043,
    8.1080,
    13.4291,
    17.714,
    19.4529,
    17.7149,
    13.4291,
    8.1080,
    3.2053,
    0.2730,
    0.00000,
    0.8596,
    6.4762,
    18.8548,
    40.149455,
    72.676767,
  ]
  function f(x)
    Ti = eltype(x)
    return sum((Ti(Y[i]) - sum(x[j] * Ti(X[i])^(2 * j - 2) for j = 1:8))^2 for i = 1:23)
  end
  x0 = ones(T, 8)
  return ADNLPModels.ADNLPModel(f, x0, name = "palmer2c"; kwargs...)
end
