export hs105

function hs105(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  y = Array{Int}(undef, 235)
  y[1] = 95
  y[2] = 105
  y[3:6] .= 110
  y[7:10] .= 115
  y[11:25] .= 120
  y[26:40] .= 125
  y[41:55] .= 130
  y[56:68] .= 135
  y[69:89] .= 140
  y[90:101] .= 145
  y[102:118] .= 150
  y[119:122] .= 155
  y[123:142] .= 160
  y[143:150] .= 165
  y[151:167] .= 170
  y[168:175] .= 175
  y[176:181] .= 180
  y[182:187] .= 185
  y[188:194] .= 190
  y[195:198] .= 195
  y[199:201] .= 200
  y[202:204] .= 205
  y[205:212] .= 210
  y[213] = 215
  y[214:219] .= 220
  y[220:224] .= 230
  y[225] = 235
  y[226:232] .= 240
  y[233] = 245
  y[234:235] .= 250
  function f(x; y = y)
    return -sum(
      log(
        (
          (x[1] / x[6] * exp(-(y[i] - x[3])^2 / (2 * x[6]^2))) +
          (x[2] / x[7] * exp(-(y[i] - x[4])^2 / (2 * x[7]^2))) +
          ((1 - x[2] - x[1]) / x[8] * exp(-(y[i] - x[5])^2 / (2 * x[8]^2)))
        ) / (sqrt(2 * one(eltype(x)) * pi)),
      ) for i = 1:235
    )
  end
  x0 = T[0.1, 0.2, 100, 125, 175, 11.2, 13.2, 15.8]
  lvar = T[0.001, 0.001, 100, 130, 170, 5, 5, 5]
  uvar = T[0.499, 0.499, 180, 210, 240, 25, 25, 25]
  lcon = -ones(T, 1)
  ucon = T(Inf) * ones(T, 1)
  return ADNLPModels.ADNLPModel(
    f,
    x0,
    lvar,
    uvar,
    [1; 1],
    [1; 2],
    T[-1; -1],
    lcon,
    ucon,
    name = "hs105";
    kwargs...,
  )
end
