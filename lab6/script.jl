using DifferentialEquations

f(u, p, t) = (0.000076 + 0.76u)*(1150 - u)

problem = ODEProblem(f, 12, (0.0, 0.012))
solution = solve(problem)


using Plots

plot(solution, label="")
