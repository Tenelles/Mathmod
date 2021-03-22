M_0_1 = 3.3
M_0_2 = 2.3
p_cr = 22
N = 33
t_1 = 22
t_2 = 11
p_1 = 6.6
p_2 = 11.1

a_1 = p_cr / (t_1^2 * p_1^2 * N)
a_2 = p_cr / (t_2^2 * p_2^2 * N)
b = p_cr / (t_1^2 * p_1^2 * t_2^2 * p_2^2 * N)
c_1 = (p_cr - p_1) / (t_1 * p_1)
c_2 = (p_cr - p_2) / (t_2 * p_2)

using DifferentialEquations

function f(dM, M, p, t)
    dM[1] = M[1] - b/c_1 * M[1] * M[2] - a_1/c_1 * M[1]^2
    dM[2] = c_2/c_1 * M[2] - b/c_1 * M[1] * M[2] - a_2/c_1 * M[2]^2
end

problem = ODEProblem(f, [M_0_1, M_0_2], (0.0, 20.0))
solution = solve(problem)

using Plots

plot(solution, xlabel=("θ"), label = ["Фирма 1" "Фирма 2"])
