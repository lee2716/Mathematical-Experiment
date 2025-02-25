# Mathematical Experimentation with MATLAB

## Project Overview

This repository contains a collection of MATLAB-based mathematical experiments, covering topics such as numerical analysis, equation solving, optimization, data fitting, and network modeling. These experiments provide practical applications of MATLAB in solving mathematical problems.

## Experiments Included

### Experiment 1: Finding Inflection Points from Discrete Data

**Objective:** Determine inflection points from discrete function values.

**Approach:** Use second-order differences to identify changes in concavity.

**Implementation:** MATLAB script analyzing discrete data over the interval.

### Experiment 2: Symbolic Integration Using MATLAB's Symbolic Toolbox

**Objective:** Compute definite integrals symbolically.

**Approach:** Define symbolic variables and use MATLAB's built-in integration functions.

**Implementation:** MATLAB script demonstrating symbolic computations.

### Experiment 3: Root Finding, Differential Equations, and Polynomial Fitting

- **Root Finding with fzero:** Solve equations using MATLAB's `fzero` function.
- **Solving Differential Equations:** Compare Euler's method with `ode23`.
- **Quadratic Polynomial Fitting:** Fit experimental data using the `polyfit` function.
- **Solving Second-Order Differential Equations:** Use `ode23` for numerical solutions and visualize results.

### Experiment 4: Optimization and Linear Programming

- **Finding Function Extrema:** Use `fminbnd` to find the maximum value of a function within a given interval.
- **Solving Linear Programming Problems:** Convert maximization problems into MATLAB’s `linprog` format and solve for optimal values.
- **Optimization in Production Planning:** Maximize factory profits given raw material constraints using `linprog` to determine optimal product mix.

### Experiment 5: Probability Distribution and Monte Carlo Methods

- **Uniform Distribution Simulation:** Generate 100 student arrival times within a uniform distribution.
- **Exponential Distribution Simulation:** Generate student arrival times over 30 minutes using `exprnd` and plot scatter plots of arrival times.
- **Monte Carlo Optimization:** Implement a Monte Carlo method for constrained optimization by randomly sampling points and tracking the best solution.

### Experiment 6: Small-World Network Modeling

**Objective:** Implement and analyze the Watts-Strogatz (WS) small-world network model.

**Concepts Covered:**
- Random and small-world network properties.
- Network clustering and average path length.

**Implementation Steps:**
- Construct a regular network with `N` nodes.
- Rewire connections with probability `p`.
- Analyze clustering coefficients and shortest paths.

**Extensions:** Explore the Newman-Watts (NW) model, which introduces new connections instead of rewiring existing ones.

## Objective

This project aims to:
- Provide practical experience with MATLAB’s numerical, symbolic, and optimization toolboxes.
- Develop skills in mathematical modeling and data analysis.
- Apply Monte Carlo simulations and network theory to real-world problems.

## Future Work

Future experiments will include:
- Advanced statistical modeling.
- Machine learning applications in MATLAB.
- More complex network analysis techniques.
