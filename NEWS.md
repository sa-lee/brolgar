# brolgar 0.0.0.9700

* Create `add_k_groups()` (#20) to randomly split the data into groups to 
  explore the data.
* Add `sample_n_obs()` and `sample_frac_obs()` (#19) to select a random group 
  of ids.
* Add `filter_n_obs()` to filter the data by the number of observations #15
* Remove unnecessary use of `var`, in `l_n_obs()`, since it only needs
  information on the `id`. Also gets a nice 5x speedup with simpler code
* calculate all longnostics (#4)
* use the word `longnostic` instead of `lognostic` (#9)
* `l_slope` now returns `l_intercept` and `l_slope` instead of `intercept` and
  `slope`.
* `l_slope` now takes bare variable names
* Renamed `l_d1` to `l_diff` and added a lag argument. This makes `l_diff` more
  flexible and the function more clearly describes its purpose.
* Rename `l_length` to `l_n_obs` to more clearly indicate that this counts the
  number of observations.
* Create `longnostic` function to create longnostic functions to package up 
 reproduced code inside the `l_` functions.
* Added a `NEWS.md` file to track changes to the package.
