# ahpgaussian

<!-- badges: start -->

[![CRAN status](https://www.r-pkg.org/badges/version/AHPGaussian)](https://CRAN.R-project.org/package=AHPGaussian)

<!-- badges: end -->

The AHPGaussian package provides functions for performing the Analytic Hierarchy Process (AHP) using a Gaussian-based approach. AHP is a widely used decision-making method that helps to prioritize alternatives based on a set of criteria. This package implements the AHP method using Gaussian normalization to derive the relative weights of the criteria and alternatives. It also includes functions for visualizing the AHP results and generating graphical outputs.

## Installation

You can install the development version of ahpgaussian from [GitHub](https://github.com/) with:

``` r
install.packages("AHPGaussian")
# or
# install.packages("devtools")
devtools::install_github("cidedson/ahpgaussian")

```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ahpgaussian)
```

``` r
ws <- ahpgaussian(warships)
```

``` r
summary(ws)

# Table1 :
#             criteria min_max variable        value          sum      norm      mean         sd     factor
# 1      Action Radius     max  model_1 4.000000e+03 2.399000e+04 0.1667361 0.3333333 0.14691617 0.44074851
# 2     Fuel Endurance     max  model_1 1.100000e+01 6.700000e+01 0.1641791 0.3333333 0.14950228 0.44850684
# 3           Autonomy     max  model_1 3.000000e+01 9.000000e+01 0.3333333 0.3333333 0.05555556 0.16666667
# 4     Primary Cannon     max  model_1 2.500000e+01 1.700000e+02 0.1470588 0.3333333 0.32263692 0.96791075
# 5   Secondary Cannon     max  model_1 1.000000e+00 5.000000e+00 0.2000000 0.3333333 0.11547005 0.34641016
# 6       AAW Missiles     max  model_1 0.000000e+00 2.000000e+00 0.0000000 0.3333333 0.28867513 0.86602540
# 7       Initial Cost     min  model_1 3.448276e-03 9.899889e-03 0.3483146 0.3333333 0.01297416 0.03892249
# 8    Life Cycle Cost     min  model_1 1.689189e-03 4.848747e-03 0.3483764 0.3333333 0.01302772 0.03908315
# 9  Construction Time     min  model_1 1.666667e-01 4.166667e-01 0.4000000 0.3333333 0.05773503 0.17320508
# 10     Action Radius     max  model_2 9.330000e+03 2.399000e+04 0.3889120 0.3333333 0.14691617 0.44074851
# 11    Fuel Endurance     max  model_2 2.600000e+01 6.700000e+01 0.3880597 0.3333333 0.14950228 0.44850684
# 12          Autonomy     max  model_2 2.500000e+01 9.000000e+01 0.2777778 0.3333333 0.05555556 0.16666667
# 13    Primary Cannon     max  model_2 2.500000e+01 1.700000e+02 0.1470588 0.3333333 0.32263692 0.96791075
# 14  Secondary Cannon     max  model_2 2.000000e+00 5.000000e+00 0.4000000 0.3333333 0.11547005 0.34641016
# 15      AAW Missiles     max  model_2 1.000000e+00 2.000000e+00 0.5000000 0.3333333 0.28867513 0.86602540
# 16      Initial Cost     min  model_2 3.225806e-03 9.899889e-03 0.3258427 0.3333333 0.01297416 0.03892249
# 17   Life Cycle Cost     min  model_2 1.579779e-03 4.848747e-03 0.3258118 0.3333333 0.01302772 0.03908315
# 18 Construction Time     min  model_2 1.250000e-01 4.166667e-01 0.3000000 0.3333333 0.05773503 0.17320508
# 19     Action Radius     max  model_3 1.066000e+04 2.399000e+04 0.4443518 0.3333333 0.14691617 0.44074851
# 20    Fuel Endurance     max  model_3 3.000000e+01 6.700000e+01 0.4477612 0.3333333 0.14950228 0.44850684
# 21          Autonomy     max  model_3 3.500000e+01 9.000000e+01 0.3888889 0.3333333 0.05555556 0.16666667
# 22    Primary Cannon     max  model_3 1.200000e+02 1.700000e+02 0.7058824 0.3333333 0.32263692 0.96791075
# 23  Secondary Cannon     max  model_3 2.000000e+00 5.000000e+00 0.4000000 0.3333333 0.11547005 0.34641016
# 24      AAW Missiles     max  model_3 1.000000e+00 2.000000e+00 0.5000000 0.3333333 0.28867513 0.86602540
# 25      Initial Cost     min  model_3 3.225806e-03 9.899889e-03 0.3258427 0.3333333 0.01297416 0.03892249
# 26   Life Cycle Cost     min  model_3 1.579779e-03 4.848747e-03 0.3258118 0.3333333 0.01302772 0.03908315
# 27 Construction Time     min  model_3 1.250000e-01 4.166667e-01 0.3000000 0.3333333 0.05773503 0.17320508
# 
# Table2 :
#            criteria     factor
# 1     Action Radius 0.12638026
# 2    Fuel Endurance 0.12860489
# 3          Autonomy 0.04779001
# 4    Primary Cannon 0.27753880
# 5  Secondary Cannon 0.09932968
# 6      AAW Missiles 0.24832419
# 7      Initial Cost 0.01116064
# 8   Life Cycle Cost 0.01120671
# 9 Construction Time 0.04966484
# 
# Table3 :
#    variable punctuation rank
# 19  model_3   0.5143176    1
# 10  model_2   0.3392280    2
# 1   model_1   0.1464544    3
```
## References
dos Santos, M, Costa, I. P. de A., & Gomes, C. F. S. (2021) Multicriteria decision-making in the selection of warships: a new approach to the ahp method. International Journal of the Analytic Hierarchy Process, 13(1). https://doi.org/10.13033/ijahp.v13i1.833
