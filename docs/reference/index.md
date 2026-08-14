# Package index

- [`xds_analyze()`](https://dd-harp.github.io/ramp.qa/reference/xds_analyze.md)
  : Analyze a Dynamical System
- [`xds_scaling()`](https://dd-harp.github.io/ramp.qa/reference/xds_scaling.md)
  : Scaling for Malaria Metrics

## Thresholds

and pseudo-thresholds

- [`make_calR()`](https://dd-harp.github.io/ramp.qa/reference/make_calR.md)
  : Parasite Dispersal through one Parasite Generation (Humans)
- [`make_calZ()`](https://dd-harp.github.io/ramp.qa/reference/make_calZ.md)
  : Parasite Dispersal through one Parasite Generation (Mosquitoes)
- [`compute_Lambda_threshold()`](https://dd-harp.github.io/ramp.qa/reference/compute_Lambda_threshold.md)
  : Get High/Low Values for Lambda

## Connectivity

Visualizing Connectivity

- [`compute_HTC()`](https://dd-harp.github.io/ramp.qa/reference/compute_HTC.md)
  : Compute the HTC Matrix
- [`compute_VC()`](https://dd-harp.github.io/ramp.qa/reference/compute_VC.md)
  : Compute the VC Matrix
- [`make_VC_matrix()`](https://dd-harp.github.io/ramp.qa/reference/make_VC_matrix.md)
  : Parasite dispersal by mosquitoes
- [`get_VC()`](https://dd-harp.github.io/ramp.qa/reference/get_VC.md) :
  Get VC
- [`get_VC_matrix()`](https://dd-harp.github.io/ramp.qa/reference/get_VC_matrix.md)
  : Get VC
- [`make_HTC_matrix()`](https://dd-harp.github.io/ramp.qa/reference/make_HTC_matrix.md)
  : Parasite dispersal by humans
- [`make_VC()`](https://dd-harp.github.io/ramp.qa/reference/make_VC.md)
  : Make VC
- [`plot_connectivity_sankey()`](https://dd-harp.github.io/ramp.qa/reference/plot_connectivity_sankey.md)
  : Plot Connectivity as a Sankey Diagram
- [`plot_connectivity_graph()`](https://dd-harp.github.io/ramp.qa/reference/plot_connectivity_graph.md)
  : Plot Connectivity
- [`plot_flow_sankey()`](https://dd-harp.github.io/ramp.qa/reference/plot_flow_sankey.md)
  : Plot Connectivity as a Sankey Diagram

## Scaling

- [`xds_scaling()`](https://dd-harp.github.io/ramp.qa/reference/xds_scaling.md)
  : Scaling for Malaria Metrics

- [`xds_scaling_Lambda()`](https://dd-harp.github.io/ramp.qa/reference/xds_scaling_Lambda.md)
  : Compute

- [`lines_eirVpr()`](https://dd-harp.github.io/ramp.qa/reference/lines_eirVpr.md)
  :

  Add lines for the EIR(t) *vs.* the PR(t)

- [`lines_eirpr()`](https://dd-harp.github.io/ramp.qa/reference/lines_eirpr.md)
  : Add lines for an eir-pr scaling relationship

- [`add_eirpr_orbits()`](https://dd-harp.github.io/ramp.qa/reference/add_eirpr_orbits.md)
  : Draw the orbit for the \\i^{th}\\ element of eirpr\$scaling.

- [`add_orbits()`](https://dd-harp.github.io/ramp.qa/reference/add_orbits.md)
  : Draw the orbit for the \\i^{th}\\ element of eirpr\$scaling.

- [`add_orbits_px()`](https://dd-harp.github.io/ramp.qa/reference/add_orbits_px.md)
  : Draw the orbit for the \\i^{th}\\ element of eirpr\$scaling, and add
  points at the minimum and maximum eir and pr

- [`xds_plot_eirVpr()`](https://dd-harp.github.io/ramp.qa/reference/xds_plot_eirVpr.md)
  :

  xds_plot EIR(t) *vs.* the PR(t)

- [`xds_plot_eirpr()`](https://dd-harp.github.io/ramp.qa/reference/xds_plot_eirpr.md)
  : xds_plot the eir-pr scaling relationship

## Seasonality

Index of Seasonal Dispersal

- [`compute_IoSD_F()`](https://dd-harp.github.io/ramp.qa/reference/compute_IoSD_F.md)
  : Compute the Index of Dispersal for a function F(t) over one year.

- [`compute_IoSD_S()`](https://dd-harp.github.io/ramp.qa/reference/compute_IoSD_S.md)
  : Compute the Index of Seasonal Dispersal for a seasonal pattern
  \\S(t)\\ over one year. This assumes that \$\$\int_0^{365} S(t)dt =
  365\$\$

- [`compute_IoSD_pr()`](https://dd-harp.github.io/ramp.qa/reference/compute_IoSD_pr.md)
  :

  Compute the Index of Seasonal Dispersal for a PR seasonal orbit for
  the \\i^{th}\\ element of `eirpr$scaling`

## Metric Conversion

Convert metrics and terms

- [`eir2fqZ()`](https://dd-harp.github.io/ramp.qa/reference/eir2fqZ.md)
  : Convert the EIR into a vector describing infective biting density
- [`fqZ2eir()`](https://dd-harp.github.io/ramp.qa/reference/fqZ2eir.md)
  : Convert a vector describing infective biting density into the EIR,
  \\E\\
- [`xds_eir2ni()`](https://dd-harp.github.io/ramp.qa/reference/xds_eir2ni.md)
  : Convert eir to ni
- [`xds_eir2pr()`](https://dd-harp.github.io/ramp.qa/reference/xds_eir2pr.md)
  : Convert eir to pr
- [`xds_pr2Lambda()`](https://dd-harp.github.io/ramp.qa/reference/xds_pr2Lambda.md)
  : Convert pr to lambda
- [`xds_pr2eir()`](https://dd-harp.github.io/ramp.qa/reference/xds_pr2eir.md)
  : Convert pr to eir
- [`xds_pr2m()`](https://dd-harp.github.io/ramp.qa/reference/xds_pr2m.md)
  : Convert pr to mosquito density
- [`xds_pr2ni()`](https://dd-harp.github.io/ramp.qa/reference/xds_pr2ni.md)
  : Convert pr to ni
- [`pr2Lambda()`](https://dd-harp.github.io/ramp.qa/reference/pr2Lambda.md)
  : Using the eirpr matrix and a RM xds_obj, convert pr to Lambda
