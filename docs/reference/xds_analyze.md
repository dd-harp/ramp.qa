# Analyze a Dynamical System

Besides solving, this function does several housekeeping tasks:

- runs
  [ramp.xds::check_models](https://dd-harp.github.io/ramp.xds/reference/check_models.html)

- sets up the vector of times when outputs are wanted: see
  [ramp.xds::make_times_xde](https://dd-harp.github.io/ramp.xds/reference/make_times_xde.html)
  or
  [ramp.xds::make_times_dts](https://dd-harp.github.io/ramp.xds/reference/make_times_dts.html)

- sets up \\y_0,\\ the initial values vector (see
  [ramp.xds::get_inits](https://dd-harp.github.io/ramp.xds/reference/get_inits.html))

- solves the system

- parses and attaches outputs (see
  [ramp.xds::parse_outputs](https://dd-harp.github.io/ramp.xds/reference/parse_outputs.html))

## Usage

``` r
xds_analyze(xds_obj)
```

## Arguments

- xds_obj:

  an **`xds`** model object

## Note

The function
[`ramp.xds::xds_solve()`](https://dd-harp.github.io/ramp.xds/reference/xds_solve.html)
dispatches on `xds_obj$xde`
