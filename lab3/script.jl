using DifferentialEquations
using Plots

u0 = [0.2, -0.2]
t = (0.0, 55.0)
dt = 0.05

function m1(du, u, p, t)
    du[1] = u[2]
    du[2] = -1.2u[1]
end

function m2(du, u, p, t)
    du[1] = u[2]
    du[2] = -2du[1] - 4.3u[1]
end

function m3(du, u, p, t)
    du[1] = u[2]
    du[2] = 2.2cos(0.6t) - 7.4du[1] - 7.5u[1]
end

s1 = solve(ODEProblem(m1, u0, t), saveat = dt)
s2 = solve(ODEProblem(m2, u0, t), saveat = dt)
s3 = solve(ODEProblem(m3, u0, t), saveat = dt)

plotX(u) = u[1]
plotY(u) = u[2]

p1 = plot(plotX.(s1.u), plotY.(s1.u))
p2 = plot(plotX.(s2.u), plotY.(s2.u))
p3 = plot(plotX.(s3.u), plotY.(s3.u))

plot(p1, p2, p3)
