using Plots
using DifferentialEquations

u0 = [9, 19]
t = (0, 10)

function m(du, u, p, t)
    du[1] = -0.67u[1] + 0.067*u[1]*u[2]
    du[2] = 0.66u[2] - 0.065*u[1]*u[2]
end

s = solve(ODEProblem(m, u0, t), saveat = 0.1)

plotX(u) = u[1]
plotY(u) = u[2]

p1 = plot(plotX.(s.u), plotY.(s.u))
p2 = plot(s)
plot(p2)
