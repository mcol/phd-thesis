# Advances in Interior Point Methods for Large-Scale Linear Programming

Thesis presented for the Degree of PhD in Optimization, [School of Mathematics,
University of Edinburgh](https://www.maths.ed.ac.uk/), supervised by
[Jacek Gondzio][jacek] and successfully defended on 6 September 2007
(examiners Danny Ralph and Ken McKinnon).

## Abstract

This research studies two computational techniques that improve the practical
performance of existing implementations of interior point methods for linear
programming. Both are based on the concept of symmetric neighbourhood as the
driving tool for the analysis of the good performance of some practical
algorithms.

The symmetric neighbourhood adds explicit upper bounds on the complementarity
pairs, besides the lower bound already present in the common _N<sub>-∞</sub>_
neighbourhood. This allows the algorithm to keep under control the spread among
complementarity pairs and reduce it with the barrier parameter _μ_. We show
that a long-step feasible algorithm based on this neighbourhood is globally
convergent and converges in _O(nL)_ iterations.

The use of the symmetric neighbourhood and the recent theoretical understanding
of the behaviour of Mehrotra's corrector direction motivate the introduction of
a weighting mechanism that can be applied to any corrector direction, whether
originating from Mehrotra's predictor-corrector algorithm or as part of the
multiple centrality correctors technique. Such modification in the way a
correction is applied aims to ensure that any computed search direction can
positively contribute to a successful iteration by increasing the overall
stepsize, thus avoiding the case that a corrector is rejected. The usefulness
of the weighting strategy is documented through complete numerical experiments
on various sets of publicly available test problems. The implementation within
the HOPDM interior point code shows remarkable time savings for large-scale
linear programming problems.

The second technique develops an efficient way of constructing a starting point
for structured large-scale stochastic linear programs. We generate a
computationally viable warm-start point by solving to low accuracy a stochastic
problem of much smaller dimension. The reduced problem is the deterministic
equivalent program corresponding to an event tree composed of a restricted
number of scenarios. The solution to the reduced problem is then expanded to
the size of the problem instance, and used to initialise the interior point
algorithm. We present theoretical conditions that the warm-start iterate has
to satisfy in order to be successful. We implemented this technique in both
the HOPDM and the OOPS frameworks, and its performance is verified through a
series of tests on problem instances coming from various stochastic programming
sources.

## Publications

- [M. Colombo][mcol] and [J. Gondzio][jacek],
Further development of multiple centrality correctors for interior point methods,
[_Computational Optimization and Applications_,
  41 (3), 277-305, 2008](https://doi.org/10.1007/s10589-007-9106-0).

- [M. Colombo][mcol], [J. Gondzio][jacek] and [A. Grothey][agr],
A warm-start approach for large-scale stochastic linear programs,
[_Mathematical Programming_,
  127 (2), 371-397, 2011](https://doi.org/10.1007/s10107-009-0290-9).

[mcol]:  https://pm2.phs.ed.ac.uk/~mcolombo/
[jacek]: https://www.maths.ed.ac.uk/~gondzio/
[agr]:   https://www.maths.ed.ac.uk/~agr/
