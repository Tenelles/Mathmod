using DifferentialEquations
using Plots

u0 = [21050, 8900]
t = (0, 2)

function m1(du, u, p, t)
    du[1] = - 0.32u[1] - 0.74u[2] + 2abs(sin(t))
    du[2] = - 0.44u[1] - 0.52u[2] + 2abs(cos(t))
end

s1 = solve(ODEProblem(m1, u0, t))
p1 = plot(s1, xlabel = "Время", ylabel = "Численность армии")

function m2(du, u, p, t)
    du[1] = - 0.39u[1] - 0.84u[2] + 2abs(sin(t))
    du[2] = - 0.42 * u[1] * u[2] - 0.49u[2] + 2abs(cos(t))
end

s2 = solve(ODEProblem(m2, u0, t), saveat = 0.1)
p2 = plot(s2, xlabel = "Время", ylabel = "Численность армии")

plot(p1, p2)
