using DifferentialEquations

alpha = 0.02
beta = 0.01

function f(du, u, p, t)
    du[1] = - alpha * u[1]
    du[2] = alpha * u[1] - beta * u[2]
    du[3] = beta * u[2]
end

u0 = [12562, 180, 58]
tspan = (0.0, 700.0)

problem = ODEProblem(f, u0, tspan)
solution = solve(problem)

using Plots

plot(solution, label="")
