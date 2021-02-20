using Plots

k = 19
dv = 5.1
x1 = k / (dv + 1)
x2 = k / (dv - 1)
theta1 = 0
theta2 = -pi

theta0 = 5pi/6
x0 = 0:0.1:2k
f0(x) = theta0

integralBase(x) = log(x)*sqrt(dv^2 - 1)
c1 = theta1 - integralBase(x1)
c2 = theta2 - integralBase(x2)

f1(x) = theta1
g1(x) = integralBase(x) + c1
f2(x) = theta2
g2(x) = integralBase(x) + c2

x1st = x1:0.1:k
x1sp = x1:0.1:2k
x2st = x2:0.1:k
x2sp = x2:0.1:2k

plot(f1.(x1st), x1st, color = [:orange])
plot!(g1.(x1sp), x1sp, color = [:orange])
p1 = plot!(f0.(x0), x0, color = [:green], proj=:polar)

plot(f2.(x2st), x2st, color = [:red])
plot!(g2.(x2sp), x2sp, color = [:red])
p2 = plot!(f0.(x0), x0, color = [:green], proj=:polar)

plot(p1, p2)

r1 = exp(theta0/c1)
r2 = exp(theta0/c2)
tt1 = g1(r1)
tt2 = g2(r2)
