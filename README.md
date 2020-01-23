# -Computational-Methods-and-Applications
## Matlab functions which were coded as a part of the AMS 147 (Computational-Methods-and-Applications) class.   
**compute_factorial.m** - takes an integer number as input and returns the factorial without using the built in factorial function.<br /> 
**compute_Euclidean_norm.m** - computes the Euclidean norm for an arbitary input vector x.  <br />
**matrix_times vector.m** - computes the product between an n-dimensional square matrix and an n-dimensional column vector<br />
**pi_series.m** - retuns the first 15 partial sums of a pi series and estimates the convergence order of the series.<br />
**chord_method.m** - takes a nonlinear equation and implements the chord method to find the zeros. <br />
**test zero.m** - computes an approximation of the smallest zero of the fifth-order Chebyshev polynomial and plots the convergence history.<br /> 
**Lagrange_interpolation.m** - computes the Lagrangian interpolant of a given set of data points <br />
**test_Lagrange_interpolation.m** - computes the Lagrangian interpolant of a polynomial that interpolates the set of data in Evenly-spaced grid and in a grid with Chebyshev-Gauss-Lobatto points. Also plots the  the Lagrangian interpolants obtained by using the two different grids. <br /> 
**compute_Lebesgue_function.m** - takes in a vector of interpolation nodes and outputs the Lebesgue function and the Lebesgue constant. <br /> 
**Lebesgue_constants_and_errors.m**- plots Lebesgue function for 4 different grids and returns the value of the Lebesgue constants and the maximum point-wise errors. <br />
**poly_least_squares.m** - implements the least squaresmethod to approximate a data set in terms of a polynomial model of degree M. returns the vector of coefficients representing the polynomial and error between the model and the data in the 2-norm. <br />
**test_least_squares.m** - uses poly_least_squares.m to determine the least squares polynomial approximants of the daily opening value of the Dow Jones Industrial Average from 1/1/14 to 2/17/19.<br />
**int_midpoint_rule.m** - takes in a function(f) and integrations interval and implements composite midpoint rule to compute the numerical approximation of Integration of f. <br /> 
**int_trapezoidal_rule.m** - takes in a function(f) and integrations interval and implements composite trapezoidal rule rule to compute the numerical approximation of Integration of f.<br />
**int_Simpson_rule.m** - takes in a function(f) and integrations interval and implements composite Simpson rule rule to compute the numerical approximation of Integration of f.<br />
**test_integration.m** - uses int_midpoint_rule.m, int_trapezoidal_rule.m, int_Simpson_rule.m to compute the numerical integration of a function and plots the integrard function and the errors of the three methods. <br />
**backwardsub.m** - returns the numerical solution to the upper triangular system of equations by using the backward substitution algorithm. <br />
**tridiagsolver.m** -  implements the Thomas algorithm to solve tridiagonal linearsystems of equations <br />
**matrixinverse.m** - implements the Leverrier algorithm to calculate the inverse of an n×n matrix A. <br />
**AB2.m** - computes the numerical solution of a initial value problem for an n-dimensional system of ordinary differential equations by using the two-step Adams-Bashforth (AB2) scheme. returns the matrix collecting the time snapshots of the solution and a vector collecting the time instants at which the solution is saved in the output matrix <br />
**solve_ODE_system.m** - solves a three-dimensional nonlinear dynamical system by using AB2.m <br />
