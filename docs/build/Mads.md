
<a id='Mads.jl-1'></a>

# Mads.jl


Documentation for Mads.jl

<a id='Mads.allwellsoff!-Tuple{Associative{K,V}}' href='#Mads.allwellsoff!-Tuple{Associative{K,V}}'>#</a>
**`Mads.allwellsoff!`** &mdash; *Method*.



Turn off all the wells in the MADS problem dictionary

<a id='Mads.allwellson!-Tuple{Associative{K,V}}' href='#Mads.allwellson!-Tuple{Associative{K,V}}'>#</a>
**`Mads.allwellson!`** &mdash; *Method*.



Turn on all the wells in the MADS problem dictionary

<a id='Mads.amanzi' href='#Mads.amanzi'>#</a>
**`Mads.amanzi`** &mdash; *Function*.



Execute amanzi

<a id='Mads.amanzi_output_parser' href='#Mads.amanzi_output_parser'>#</a>
**`Mads.amanzi_output_parser`** &mdash; *Function*.



Parse Amanzi output provided in an external file (`filename`)

```
Mads.amanzi_output_parser()
Mads.amanzi_output_parser("observations.out")
```

Arguments:

  * `filename` : external file name (optional)

Returns:

  * `dict` : a dictionary with model observations following MADS requirements

<a id='Mads.asinetransform-Tuple{Array{T,1},Array{T,1},Array{T,1},Array{T,1}}' href='#Mads.asinetransform-Tuple{Array{T,1},Array{T,1},Array{T,1},Array{T,1}}'>#</a>
**`Mads.asinetransform`** &mdash; *Method*.



Arcsine transformation of model parameters

<a id='Mads.bayessampling-Tuple{Associative{K,V}}' href='#Mads.bayessampling-Tuple{Associative{K,V}}'>#</a>
**`Mads.bayessampling`** &mdash; *Method*.



Bayesian Sampling

```
Mads.bayessampling(madsdata; nsteps=1000, burnin=100, thinning=1, seed=2016)
Mads.bayessampling(madsdata, numsequences; nsteps=1000, burnin=100, thinning=1, seed=2016)
```

Arguments:

  * `madsdata` : MADS problem dictionary
  * `numsequences` : number of sequences executed in parallel
  * `nsteps` : number of final realizations in the chain
  * `burnin` :  number of initial realizations before the MCMC are recorded
  * `thinning` : removal of any `thinning` realization
  * `seed` : initial random number seed

Returns:

  * `mcmcchain` : 

<a id='Mads.calibrate-Tuple{Associative{K,V}}' href='#Mads.calibrate-Tuple{Associative{K,V}}'>#</a>
**`Mads.calibrate`** &mdash; *Method*.



Calibrate

`Mads.calibrate(madsdata; tolX=1e-3, tolG=1e-6, maxEval=1000, maxIter=100, maxJacobians=100, lambda=100.0, lambda_mu=10.0, np_lambda=10, show_trace=false, usenaive=false)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `tolX` : parameter space tolerance
  * `tolG` : parameter space update tolerance
  * `maxEval` : maximum number of model evaluations
  * `maxIter` : maximum number of optimization iterations
  * `maxJacobians` : maximum number of Jacobian solves
  * `lambda` : initial Levenberg-Marquardt lambda 
  * `lambda_mu` : lambda multiplication factor [10]
  * `np_lambda` : number of parallel lambda solves
  * `show_trace` : shows solution trace [default=false]
  * `save_results` : save intermediate results [default=true]
  * `usenaive` : use naive Levenberg-Marquardt solver

Returns:

  * `minimumdict` : model parameter dictionary with the optimal values at the minimum
  * `results` : optimization algorithm results (e.g. results.minimum)

<a id='Mads.calibratenlopt-Tuple{Associative{K,V}}' href='#Mads.calibratenlopt-Tuple{Associative{K,V}}'>#</a>
**`Mads.calibratenlopt`** &mdash; *Method*.



Do a calibration using NLopt 

<a id='Mads.calibraterandom' href='#Mads.calibraterandom'>#</a>
**`Mads.calibraterandom`** &mdash; *Function*.



Calibrate with random initial guesses

```
Mads.calibraterandom(madsdata; tolX=1e-3, tolG=1e-6, maxEval=1000, maxIter=100, maxJacobians=100, lambda=100.0, lambda_mu=10.0, np_lambda=10, show_trace=false, usenaive=false)
Mads.calibraterandom(madsdata, numberofsamples; tolX=1e-3, tolG=1e-6, maxEval=1000, maxIter=100, maxJacobians=100, lambda=100.0, lambda_mu=10.0, np_lambda=10, show_trace=false, usenaive=false)
```

Arguments:

  * `madsdata` : MADS problem dictionary
  * `numberofsamples` : number of random initial samples
  * `tolX` : parameter space tolerance
  * `tolG` : parameter space update tolerance
  * `maxEval` : maximum number of model evaluations
  * `maxIter` : maximum number of optimization iterations
  * `maxJacobians` : maximum number of Jacobian solves
  * `lambda` : initial Levenberg-Marquardt lambda 
  * `lambda_mu` : lambda multiplication factor [10]
  * `np_lambda` : number of parallel lambda solves
  * `show_trace` : shows solution trace [default=false]
  * `save_results` : save intermediate results [default=true]
  * `usenaive` : use naive Levenberg-Marquardt solver
  * `seed` : initial random seed

Returns:

  * `bestresult` : optimal results tuple: [1] model parameter dictionary with the optimal values at the minimum; [2] optimization algorithm results (e.g. bestresult[2].minimum)

<a id='Mads.checkout' href='#Mads.checkout'>#</a>
**`Mads.checkout`** &mdash; *Function*.



Checkout the latest version of the Mads modules

<a id='Mads.cleancoverage-Tuple{}' href='#Mads.cleancoverage-Tuple{}'>#</a>
**`Mads.cleancoverage`** &mdash; *Method*.



Remove Mads coverage files

<a id='Mads.cmadsins_obs-Tuple{Array{T,1},AbstractString,AbstractString}' href='#Mads.cmadsins_obs-Tuple{Array{T,1},AbstractString,AbstractString}'>#</a>
**`Mads.cmadsins_obs`** &mdash; *Method*.



Call C MADS ins_obs() function from the MADS dynamic library

<a id='Mads.computemass-Tuple{Any}' href='#Mads.computemass-Tuple{Any}'>#</a>
**`Mads.computemass`** &mdash; *Method*.



Compute injected/reduced contaminant mass for a given set of mads input files

`Mads.computemass(madsfiles; time = 0, path = ".")`

Arguments:

  * `madsfiles` : matching pattern for Mads input files (string or regular expression accepted)
  * `time` : computational time
  * `path` : search directory for the mads input files 

Returns:

  * `lambda` : array with all the lambda values
  * `mass_injected` : array with associated total injected mass
  * `mass_reduced` : array with associated total reduced mass

<a id='Mads.computemass-Tuple{Associative{K,V}}' href='#Mads.computemass-Tuple{Associative{K,V}}'>#</a>
**`Mads.computemass`** &mdash; *Method*.



Compute injected/reduced contaminant mass

`Mads.computemass(madsdata; time = 0)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `time` : computational time

Returns:

  * `mass_injected` : total injected mass
  * `mass_reduced` : total reduced mass

<a id='Mads.computeparametersensitities-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.computeparametersensitities-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.computeparametersensitities`** &mdash; *Method*.



Compute sensitivities for each model parameter; averaging the sensitivity indices over the entire observation range

Arguments:

  * `madsdata` : MADS problem dictionary
  * `saresults` : sensitivity analysis results

<a id='Mads.contamination-Tuple{Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any}' href='#Mads.contamination-Tuple{Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any,Any}'>#</a>
**`Mads.contamination`** &mdash; *Method*.



Compute concentration for a point in space and time (x,y,z,t)

`Mads.contamination(wellx, welly, wellz, n, lambda, theta, vx, vy, vz, ax, ay, az, H, x, y, z, dx, dy, dz, f, t0, t1, t; anasolfunction="long_bbb_ddd_iir_c")`

Arguments:

  * `wellx` - observation point (well) X coordinate
  * `welly` - observation point (well) Y coordinate
  * `wellz` - observation point (well) Z coordinate
  * `n` - porosity
  * `lambda` - first-order reaction rate
  * `theta` - groundwater flow direction
  * `vx` - advective transport velocity in X direction
  * `vy` - advective transport velocity in Y direction
  * `vz` - advective transport velocity in Z direction
  * `ax` - dispersivity in X direction (longitudinal)
  * `ay` - dispersivity in Y direction (transverse horizontal)
  * `az` - dispersivity in Y direction (transverse vertical)
  * `H` - Hurst coefficient for Fractional Brownian dispersion
  * `x` - X coordinate of contaminant source location 
  * `y` - Y coordinate of contaminant source location
  * `z` - Z coordinate of contaminant source location
  * `dx` - source size (extent) in X direction
  * `dy` - source size (extent) in Y direction
  * `dz` - source size (extent) in Z direction
  * `f` - source mass flux
  * `t0` - source starting time
  * `t1` - source termination time
  * `t` - time to compute concentration at the observation point
  * `anasolfunction` : Anasol function to call (check out the Anasol module) [long_bbb_ddd_iir_c]

Returns:

  * predicted concentration at (wellx, welly, wellz, t)

<a id='Mads.copyright-Tuple{}' href='#Mads.copyright-Tuple{}'>#</a>
**`Mads.copyright`** &mdash; *Method*.



Produce MADS copyright information

<a id='Mads.create_documentation-Tuple{}' href='#Mads.create_documentation-Tuple{}'>#</a>
**`Mads.create_documentation`** &mdash; *Method*.



Create web documentation files for Mads functions

<a id='Mads.create_tests_off-Tuple{}' href='#Mads.create_tests_off-Tuple{}'>#</a>
**`Mads.create_tests_off`** &mdash; *Method*.



Turn off the generation of MADS tests (default)

<a id='Mads.create_tests_on-Tuple{}' href='#Mads.create_tests_on-Tuple{}'>#</a>
**`Mads.create_tests_on`** &mdash; *Method*.



Turn on the generation of MADS tests (dangerous)

<a id='Mads.createmadsproblem-Tuple{AbstractString,AbstractString}' href='#Mads.createmadsproblem-Tuple{AbstractString,AbstractString}'>#</a>
**`Mads.createmadsproblem`** &mdash; *Method*.



Create a new Mads problem where the observation targets are computed based on the model predictions

  * `Mads.createmadsproblem(infilename::AbstractString, outfilename::AbstractString)`
  * `Mads.createmadsproblem(madsdata::Associative, outfilename::AbstractString)`
  * `Mads.createmadsproblem(madsdata::Associative, predictions::Associative)`
  * `Mads.createmadsproblem(madsdata::Associative, predictions::Associative, outfilename::AbstractString)`

Arguments:

  * `infilename` : input Mads file
  * `outfilename` : output Mads file
  * `madsdata` : MADS problem dictionary
  * `predictions` : dictionary of model predictions

<a id='Mads.createobservations!-Tuple{Associative{K,V},Any,Any}' href='#Mads.createobservations!-Tuple{Associative{K,V},Any,Any}'>#</a>
**`Mads.createobservations!`** &mdash; *Method*.



Create observations in the MADS problem dictionary based on `time` and `observation` arrays

<a id='Mads.deleteNaN!-Tuple{DataFrames.DataFrame}' href='#Mads.deleteNaN!-Tuple{DataFrames.DataFrame}'>#</a>
**`Mads.deleteNaN!`** &mdash; *Method*.



Delete rows with NaN in a Dataframe `df`

<a id='Mads.display-Tuple{AbstractString}' href='#Mads.display-Tuple{AbstractString}'>#</a>
**`Mads.display`** &mdash; *Method*.



Display image file

<a id='Mads.dobigdt-Tuple{Associative{K,V},Int64}' href='#Mads.dobigdt-Tuple{Associative{K,V},Int64}'>#</a>
**`Mads.dobigdt`** &mdash; *Method*.



Perform BIG-DT analysis

Arguments:

  * `madsdata` : MADS problem dictionary
  * `nummodelruns` : number of model runs
  * `numhorizons` : number of info-gap horizons of uncertainty
  * `maxHorizon` : maximum info-gap horizons of uncertainty
  * `numlikelihoods` : number of Bayesian likelihoods

Returns:

  * `bigdtresults` : dictionary with BIG-DT results

<a id='Mads.dumpasciifile-Tuple{AbstractString,Any}' href='#Mads.dumpasciifile-Tuple{AbstractString,Any}'>#</a>
**`Mads.dumpasciifile`** &mdash; *Method*.



Dump ASCII file

<a id='Mads.dumpjsonfile-Tuple{AbstractString,Any}' href='#Mads.dumpjsonfile-Tuple{AbstractString,Any}'>#</a>
**`Mads.dumpjsonfile`** &mdash; *Method*.



Dump a JSON file

<a id='Mads.dumpwelldata-Tuple{AbstractString,Any}' href='#Mads.dumpwelldata-Tuple{AbstractString,Any}'>#</a>
**`Mads.dumpwelldata`** &mdash; *Method*.



Dump well data from MADS problem dictionary into a ASCII file

<a id='Mads.dumpyamlmadsfile-Tuple{Any,AbstractString}' href='#Mads.dumpyamlmadsfile-Tuple{Any,AbstractString}'>#</a>
**`Mads.dumpyamlmadsfile`** &mdash; *Method*.



Dump YAML Mads file

Arguments:

  * `madsdata` : MADS problem dictionary
  * `filename` : file name

<a id='Mads.efast-Tuple{Associative{K,V}}' href='#Mads.efast-Tuple{Associative{K,V}}'>#</a>
**`Mads.efast`** &mdash; *Method*.



Sensitivity analysis using Saltelli's extended Fourier Amplitude Sensitivity Testing (eFAST) method

Arguments:

  * `madsdata` : MADS problem dictionary
  * `N` : number of samples
  * `M` : maximum number of harmonics
  * `gamma` : multiplication factor (Saltelli 1999 recommends gamma = 2 or 4)
  * `seed` : initial random seed

<a id='Mads.evaluatemadsexpression-Tuple{Any,Any}' href='#Mads.evaluatemadsexpression-Tuple{Any,Any}'>#</a>
**`Mads.evaluatemadsexpression`** &mdash; *Method*.



Evaluate the expression in terms of the parameters, return a Dict() containing the expression names as keys, and the values of the expression as values

<a id='Mads.evaluatemadsexpressions-Tuple{Associative{K,V},Any}' href='#Mads.evaluatemadsexpressions-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.evaluatemadsexpressions`** &mdash; *Method*.



Evaluate the expressions in terms of the parameters, return a Dict() containing the expression names as keys, and the values of the expression as values

<a id='Mads.filterkeys-Tuple{Associative{K,V},Regex}' href='#Mads.filterkeys-Tuple{Associative{K,V},Regex}'>#</a>
**`Mads.filterkeys`** &mdash; *Method*.



Filter dictionary keys based on a string or regular expression

<a id='Mads.forward-Tuple{Associative{K,V}}' href='#Mads.forward-Tuple{Associative{K,V}}'>#</a>
**`Mads.forward`** &mdash; *Method*.



Perform a forward run using the initial or provided values for the model parameters

  * `forward(madsdata)`
  * `forward(madsdata, paramdict)`
  * `forward(madsdata, paramarray)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `paramdict` : dictionary of model parameter values
  * `paramarray` : array of model parameter values

Returns:

  * `obsvalues` : dictionary of model predictions

<a id='Mads.forwardgrid-Tuple{Associative{K,V}}' href='#Mads.forwardgrid-Tuple{Associative{K,V}}'>#</a>
**`Mads.forwardgrid`** &mdash; *Method*.



Perform a forward run over a 3D grid defined in `madsdata` using the initial or provided values for the model parameters

  * `forwardgrid(madsdata)`  
  * `forwardgrid(madsdata, paramvalues))`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `paramvalues` : dictionary of model parameter values

Returns:

  * `array3d` : 3D array with model predictions along a 3D grid

<a id='Mads.free-Tuple{}' href='#Mads.free-Tuple{}'>#</a>
**`Mads.free`** &mdash; *Method*.



Use the latest tagged versions of the Mads modules

<a id='Mads.functions' href='#Mads.functions'>#</a>
**`Mads.functions`** &mdash; *Function*.



List available functions in the MADS modules:

Examples:

```
Mads.functions()
Mads.functions(BIGUQ)
Mads.functions("get")
Mads.functions(Mads, "get")
```

Arguments:

  * `module` : MADS module
  * `string` : matching string

<a id='Mads.getextension-Tuple{Any}' href='#Mads.getextension-Tuple{Any}'>#</a>
**`Mads.getextension`** &mdash; *Method*.



Get file name extension

Example:

```
ext = Mads.getextension("a.mads") # ext = "mads" 
```

<a id='Mads.getimportantsamples-Tuple{Array{T,N},Array{T,1}}' href='#Mads.getimportantsamples-Tuple{Array{T,N},Array{T,1}}'>#</a>
**`Mads.getimportantsamples`** &mdash; *Method*.



Get important samples

Arguments:

  * `samples` : array of samples
  * `llhoods` : vector of log-likelihoods

Returns:

  * `imp_samples` : array of important samples

<a id='Mads.getlogparamkeys-Tuple{Any,Any}' href='#Mads.getlogparamkeys-Tuple{Any,Any}'>#</a>
**`Mads.getlogparamkeys`** &mdash; *Method*.



Get the keys in the MADS problem dictionary for parameters that are log-transformed (`log`)

<a id='Mads.getmadsdir-Tuple{}' href='#Mads.getmadsdir-Tuple{}'>#</a>
**`Mads.getmadsdir`** &mdash; *Method*.



Get the directory where currently Mads is running

`problemdir = Mads.getmadsdir()`

<a id='Mads.getmadsinputfile-Tuple{}' href='#Mads.getmadsinputfile-Tuple{}'>#</a>
**`Mads.getmadsinputfile`** &mdash; *Method*.



Get the default MADS input file set as a MADS global variable using `setmadsinputfile(filename)`

`Mads.getmadsinputfile()`

Arguments: `none`

Returns:

  * `filename` : input file name (e.g. `input_file_name.mads`)

<a id='Mads.getmadsproblemdir-Tuple{Associative{K,V}}' href='#Mads.getmadsproblemdir-Tuple{Associative{K,V}}'>#</a>
**`Mads.getmadsproblemdir`** &mdash; *Method*.



Get the directory where the Mads data file is located

`Mads.getmadsproblemdir(madsdata)`

Example:

```
madsdata = Mads.loadmadsproblemdir("../../a.mads")
madsproblemdir = Mads.getmadsproblemdir(madsdata)
```

where `madsproblemdir` = `"../../"`

<a id='Mads.getmadsrootname-Tuple{Associative{K,V}}' href='#Mads.getmadsrootname-Tuple{Associative{K,V}}'>#</a>
**`Mads.getmadsrootname`** &mdash; *Method*.



Get the MADS problem root name

`madsrootname = Mads.getmadsrootname(madsdata)`

<a id='Mads.getnonlogparamkeys-Tuple{Any,Any}' href='#Mads.getnonlogparamkeys-Tuple{Any,Any}'>#</a>
**`Mads.getnonlogparamkeys`** &mdash; *Method*.



Get the keys in the MADS problem dictionary for parameters that are NOT log-transformed (`log`)

<a id='Mads.getnonoptparamkeys-Tuple{Any,Any}' href='#Mads.getnonoptparamkeys-Tuple{Any,Any}'>#</a>
**`Mads.getnonoptparamkeys`** &mdash; *Method*.



Get the keys in the MADS problem dictionary for parameters that are NOT optimized (`opt`)

<a id='Mads.getobsdist-Tuple{Associative{K,V},Any}' href='#Mads.getobsdist-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.getobsdist`** &mdash; *Method*.



Get an array with `dist` values for observations in the MADS problem dictionary defined by `obskeys`

<a id='Mads.getobsdist-Tuple{Associative{K,V}}' href='#Mads.getobsdist-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobsdist`** &mdash; *Method*.



Get an array with `dist` values for all observations in the MADS problem dictionary

<a id='Mads.getobskeys-Tuple{Associative{K,V}}' href='#Mads.getobskeys-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobskeys`** &mdash; *Method*.



Get keys for all observations in the MADS problem dictionary

<a id='Mads.getobslog-Tuple{Associative{K,V},Any}' href='#Mads.getobslog-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.getobslog`** &mdash; *Method*.



Get an array with `log` values for observations in the MADS problem dictionary defined by `obskeys`

<a id='Mads.getobslog-Tuple{Associative{K,V}}' href='#Mads.getobslog-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobslog`** &mdash; *Method*.



Get an array with `log` values for all observations in the MADS problem dictionary

<a id='Mads.getobsmax-Tuple{Associative{K,V},Any}' href='#Mads.getobsmax-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.getobsmax`** &mdash; *Method*.



Get an array with `max` values for observations in the MADS problem dictionary defined by `obskeys`

<a id='Mads.getobsmax-Tuple{Associative{K,V}}' href='#Mads.getobsmax-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobsmax`** &mdash; *Method*.



Get an array with `max` values for all observations in the MADS problem dictionary

<a id='Mads.getobsmin-Tuple{Associative{K,V},Any}' href='#Mads.getobsmin-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.getobsmin`** &mdash; *Method*.



Get an array with `min` values for observations in the MADS problem dictionary defined by `obskeys`

<a id='Mads.getobsmin-Tuple{Associative{K,V}}' href='#Mads.getobsmin-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobsmin`** &mdash; *Method*.



Get an array with `min` values for all observations in the MADS problem dictionary

<a id='Mads.getobstarget-Tuple{Associative{K,V},Any}' href='#Mads.getobstarget-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.getobstarget`** &mdash; *Method*.



Get an array with `target` values for observations in the MADS problem dictionary defined by `obskeys`

<a id='Mads.getobstarget-Tuple{Associative{K,V}}' href='#Mads.getobstarget-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobstarget`** &mdash; *Method*.



Get an array with `target` values for all observations in the MADS problem dictionary

<a id='Mads.getobstime-Tuple{Associative{K,V},Any}' href='#Mads.getobstime-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.getobstime`** &mdash; *Method*.



Get an array with `time` values for observations in the MADS problem dictionary defined by `obskeys`

<a id='Mads.getobstime-Tuple{Associative{K,V}}' href='#Mads.getobstime-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobstime`** &mdash; *Method*.



Get an array with `time` values for all observations in the MADS problem dictionary

<a id='Mads.getobsweight-Tuple{Associative{K,V},Any}' href='#Mads.getobsweight-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.getobsweight`** &mdash; *Method*.



Get an array with `weight` values for observations in the MADS problem dictionary defined by `obskeys`

<a id='Mads.getobsweight-Tuple{Associative{K,V}}' href='#Mads.getobsweight-Tuple{Associative{K,V}}'>#</a>
**`Mads.getobsweight`** &mdash; *Method*.



Get an array with `weight` values for all observations in the MADS problem dictionary

<a id='Mads.getoptparamkeys-Tuple{Any,Any}' href='#Mads.getoptparamkeys-Tuple{Any,Any}'>#</a>
**`Mads.getoptparamkeys`** &mdash; *Method*.



Get the keys in the MADS problem dictionary for parameters that are optimized (`opt`)

<a id='Mads.getparamdict-Tuple{Associative{K,V}}' href='#Mads.getparamdict-Tuple{Associative{K,V}}'>#</a>
**`Mads.getparamdict`** &mdash; *Method*.



Get dictionary with all parameters and their respective initial values

`Mads.getparamdict(madsdata)`

Arguments:

  * `madsdata` : MADS problem dictionary

Returns:

  * `paramdict` : dictionary with all parameters and their respective initial values

<a id='Mads.getparamdistributions-Tuple{Associative{K,V}}' href='#Mads.getparamdistributions-Tuple{Associative{K,V}}'>#</a>
**`Mads.getparamdistributions`** &mdash; *Method*.



Get probabilistic distributions of all parameters in the MADS problem dictionary

`Mads.getparamdistributions(madsdata; init_dist=false)`

Note:

Probabilistic distribution of parameters can be defined only if `dist` or `min`/`max` model parameter fields are specified in the MADS problem dictionary `madsdata`.

Arguments:

  * `madsdata` : MADS problem dictionary
  * `init_dist` : if `true` use the distribution defined for initialization in the MADS problem dictionary (defined using `init_dist` parameter field); else use the regular distribution defined in the MADS problem dictionary (defined using `dist` parameter field)

<a id='Mads.getparamkeys-Tuple{Associative{K,V}}' href='#Mads.getparamkeys-Tuple{Associative{K,V}}'>#</a>
**`Mads.getparamkeys`** &mdash; *Method*.



Get keys of all parameters in the MADS dictionary

`Mads.getparamkeys(madsdata)`

Arguments:

  * `madsdata` : MADS problem dictionary

Returns:

  * `paramkeys` : array with the keys of all parameters in the MADS dictionary

<a id='Mads.getparamsinit-Tuple{Any,Any}' href='#Mads.getparamsinit-Tuple{Any,Any}'>#</a>
**`Mads.getparamsinit`** &mdash; *Method*.



Get an array with `init` values for parameters defined by `paramkeys`

<a id='Mads.getparamsinit-Tuple{Any}' href='#Mads.getparamsinit-Tuple{Any}'>#</a>
**`Mads.getparamsinit`** &mdash; *Method*.



Get an array with `init` values for all the MADS model parameters

<a id='Mads.getparamsinit_max-Tuple{Any,Any}' href='#Mads.getparamsinit_max-Tuple{Any,Any}'>#</a>
**`Mads.getparamsinit_max`** &mdash; *Method*.



Get an array with `init_max` values for parameters defined by `paramkeys`

<a id='Mads.getparamsinit_max-Tuple{Any}' href='#Mads.getparamsinit_max-Tuple{Any}'>#</a>
**`Mads.getparamsinit_max`** &mdash; *Method*.



Get an array with `init_max` values for all the MADS model parameters

<a id='Mads.getparamsinit_min-Tuple{Any,Any}' href='#Mads.getparamsinit_min-Tuple{Any,Any}'>#</a>
**`Mads.getparamsinit_min`** &mdash; *Method*.



Get an array with `init_min` values for parameters defined by `paramkeys`

<a id='Mads.getparamsinit_min-Tuple{Any}' href='#Mads.getparamsinit_min-Tuple{Any}'>#</a>
**`Mads.getparamsinit_min`** &mdash; *Method*.



Get an array with `init_min` values for all the MADS model parameters

<a id='Mads.getparamslog-Tuple{Any,Any}' href='#Mads.getparamslog-Tuple{Any,Any}'>#</a>
**`Mads.getparamslog`** &mdash; *Method*.



Get an array with `log` values for parameters defined by `paramkeys`

<a id='Mads.getparamslog-Tuple{Any}' href='#Mads.getparamslog-Tuple{Any}'>#</a>
**`Mads.getparamslog`** &mdash; *Method*.



Get an array with `log` values for all the MADS model parameters

<a id='Mads.getparamslongname-Tuple{Any,Any}' href='#Mads.getparamslongname-Tuple{Any,Any}'>#</a>
**`Mads.getparamslongname`** &mdash; *Method*.



Get an array with `longname` values for parameters defined by `paramkeys`

<a id='Mads.getparamslongname-Tuple{Any}' href='#Mads.getparamslongname-Tuple{Any}'>#</a>
**`Mads.getparamslongname`** &mdash; *Method*.



Get an array with `longname` values for all the MADS model parameters

<a id='Mads.getparamsmax-Tuple{Any,Any}' href='#Mads.getparamsmax-Tuple{Any,Any}'>#</a>
**`Mads.getparamsmax`** &mdash; *Method*.



Get an array with `max` values for parameters defined by `paramkeys`

<a id='Mads.getparamsmax-Tuple{Any}' href='#Mads.getparamsmax-Tuple{Any}'>#</a>
**`Mads.getparamsmax`** &mdash; *Method*.



Get an array with `min` values for all the MADS model parameters

<a id='Mads.getparamsmin-Tuple{Any,Any}' href='#Mads.getparamsmin-Tuple{Any,Any}'>#</a>
**`Mads.getparamsmin`** &mdash; *Method*.



Get an array with `min` values for parameters defined by `paramkeys`

<a id='Mads.getparamsmin-Tuple{Any}' href='#Mads.getparamsmin-Tuple{Any}'>#</a>
**`Mads.getparamsmin`** &mdash; *Method*.



Get an array with `min` values for all the MADS model parameters

<a id='Mads.getparamsplotname-Tuple{Any,Any}' href='#Mads.getparamsplotname-Tuple{Any,Any}'>#</a>
**`Mads.getparamsplotname`** &mdash; *Method*.



Get an array with `plotname` values for parameters defined by `paramkeys`

<a id='Mads.getparamsplotname-Tuple{Any}' href='#Mads.getparamsplotname-Tuple{Any}'>#</a>
**`Mads.getparamsplotname`** &mdash; *Method*.



Get an array with `plotname` values for all the MADS model parameters

<a id='Mads.getparamsstep-Tuple{Any,Any}' href='#Mads.getparamsstep-Tuple{Any,Any}'>#</a>
**`Mads.getparamsstep`** &mdash; *Method*.



Get an array with `step` values for parameters defined by `paramkeys`

<a id='Mads.getparamsstep-Tuple{Any}' href='#Mads.getparamsstep-Tuple{Any}'>#</a>
**`Mads.getparamsstep`** &mdash; *Method*.



Get an array with `step` values for all the MADS model parameters

<a id='Mads.getparamstype-Tuple{Any,Any}' href='#Mads.getparamstype-Tuple{Any,Any}'>#</a>
**`Mads.getparamstype`** &mdash; *Method*.



Get an array with `type` values for parameters defined by `paramkeys`

<a id='Mads.getparamstype-Tuple{Any}' href='#Mads.getparamstype-Tuple{Any}'>#</a>
**`Mads.getparamstype`** &mdash; *Method*.



Get an array with `type` values for all the MADS model parameters

<a id='Mads.getprocs-Tuple{}' href='#Mads.getprocs-Tuple{}'>#</a>
**`Mads.getprocs`** &mdash; *Method*.



Get the number of processors

<a id='Mads.getrestartdir' href='#Mads.getrestartdir'>#</a>
**`Mads.getrestartdir`** &mdash; *Function*.



Get the directory where restarts will be stored.

<a id='Mads.getrootname-Tuple{AbstractString}' href='#Mads.getrootname-Tuple{AbstractString}'>#</a>
**`Mads.getrootname`** &mdash; *Method*.



Get file name root

Example:

```
r = Mads.getrootname("a.rnd.dat") # r = "a"
r = Mads.getrootname("a.rnd.dat", first=false) # r = "a.rnd"
```

<a id='Mads.getsourcekeys-Tuple{Associative{K,V}}' href='#Mads.getsourcekeys-Tuple{Associative{K,V}}'>#</a>
**`Mads.getsourcekeys`** &mdash; *Method*.



Get keys of all source parameters in the MADS dictionary

`Mads.getsourcekeys(madsdata)`

Arguments:

  * `madsdata` : MADS problem dictionary

Returns:

  * `sourcekeys` : array with keys of all source parameters in the MADS dictionary

<a id='Mads.gettarget-Tuple{Associative{K,V}}' href='#Mads.gettarget-Tuple{Associative{K,V}}'>#</a>
**`Mads.gettarget`** &mdash; *Method*.



Get observation target

<a id='Mads.gettargetkeys-Tuple{Associative{K,V}}' href='#Mads.gettargetkeys-Tuple{Associative{K,V}}'>#</a>
**`Mads.gettargetkeys`** &mdash; *Method*.



Get keys for all targets (observations with weights greater than zero) in the MADS problem dictionary

<a id='Mads.gettime-Tuple{Associative{K,V}}' href='#Mads.gettime-Tuple{Associative{K,V}}'>#</a>
**`Mads.gettime`** &mdash; *Method*.



Get observation time

<a id='Mads.getweight-Tuple{Associative{K,V}}' href='#Mads.getweight-Tuple{Associative{K,V}}'>#</a>
**`Mads.getweight`** &mdash; *Method*.



Get observation weight

<a id='Mads.getwellkeys-Tuple{Associative{K,V}}' href='#Mads.getwellkeys-Tuple{Associative{K,V}}'>#</a>
**`Mads.getwellkeys`** &mdash; *Method*.



Get keys for all wells in the MADS problem dictionary

<a id='Mads.getwellsdata-Tuple{Associative{K,V}}' href='#Mads.getwellsdata-Tuple{Associative{K,V}}'>#</a>
**`Mads.getwellsdata`** &mdash; *Method*.



Ger `Wells` class spatial and temporal data

<a id='Mads.haskeyword-Tuple{Associative{K,V},AbstractString}' href='#Mads.haskeyword-Tuple{Associative{K,V},AbstractString}'>#</a>
**`Mads.haskeyword`** &mdash; *Method*.



Check for a `keyword` in a class within the Mads dictionary `madsdata`

  * `Mads.haskeyword(madsdata, keyword)`
  * `Mads.haskeyword(madsdata, class, keyword)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `class` : dictionary class; if not provided searches for `keyword` in `Problem` class
  * `keyword` : dictionary key

Returns: `true` or `false`

Examples:

  * `Mads.haskeyword(madsdata, "disp")` ... searches in `Problem` class by default
  * `Mads.haskeyword(madsdata, "Wells", "R-28")` ... searches in `Wells` class for a keyword "R-28"

<a id='Mads.help-Tuple{}' href='#Mads.help-Tuple{}'>#</a>
**`Mads.help`** &mdash; *Method*.



Produce MADS help information

<a id='Mads.importeverywhere-Tuple{Any}' href='#Mads.importeverywhere-Tuple{Any}'>#</a>
**`Mads.importeverywhere`** &mdash; *Method*.



Import function everywhere from a file. The first function in the file is the one that will be called by Mads to perform the model simulations.

<a id='Mads.indexkeys-Tuple{Associative{K,V},Regex}' href='#Mads.indexkeys-Tuple{Associative{K,V},Regex}'>#</a>
**`Mads.indexkeys`** &mdash; *Method*.



Find indexes for dictionary keys based on a string or regular expression

<a id='Mads.ins_obs-Tuple{AbstractString,AbstractString}' href='#Mads.ins_obs-Tuple{AbstractString,AbstractString}'>#</a>
**`Mads.ins_obs`** &mdash; *Method*.



Apply Mads instruction file `instructionfilename` to read model input file `inputfilename`

<a id='Mads.instline2regexs-Tuple{AbstractString}' href='#Mads.instline2regexs-Tuple{AbstractString}'>#</a>
**`Mads.instline2regexs`** &mdash; *Method*.



Convert an instruction line in the Mads instruction file into regular expressions

<a id='Mads.invobsweights!-Tuple{Associative{K,V},Number}' href='#Mads.invobsweights!-Tuple{Associative{K,V},Number}'>#</a>
**`Mads.invobsweights!`** &mdash; *Method*.



Inversely proportional observation weights in the MADS problem dictionary

<a id='Mads.invwellweights!-Tuple{Associative{K,V},Number}' href='#Mads.invwellweights!-Tuple{Associative{K,V},Number}'>#</a>
**`Mads.invwellweights!`** &mdash; *Method*.



Inversely proportional observation weights in the MADS problem dictionary

<a id='Mads.islog-Tuple{Associative{K,V},AbstractString}' href='#Mads.islog-Tuple{Associative{K,V},AbstractString}'>#</a>
**`Mads.islog`** &mdash; *Method*.



Is parameter with key `parameterkey` log-transformed?

<a id='Mads.isobs-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.isobs-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.isobs`** &mdash; *Method*.



Is a dictionary containing all the observations

<a id='Mads.isopt-Tuple{Associative{K,V},AbstractString}' href='#Mads.isopt-Tuple{Associative{K,V},AbstractString}'>#</a>
**`Mads.isopt`** &mdash; *Method*.



Is parameter with key `parameterkey` optimizable?

<a id='Mads.isparam-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.isparam-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.isparam`** &mdash; *Method*.



Is the dictionary containing all the parameters

<a id='Mads.levenberg_marquardt' href='#Mads.levenberg_marquardt'>#</a>
**`Mads.levenberg_marquardt`** &mdash; *Function*.



Levenberg-Marquardt optimization

Arguments:

  * `f` : forward model function
  * `g` : gradient function for the forward model
  * `x0` : initial parameter guess
  * `root` : Mads problem root name
  * `tolX` : parameter space tolerance
  * `tolG` : parameter space update tolerance
  * `tolOF` : objective function update tolerance
  * `maxEval` : maximum number of model evaluations
  * `maxIter` : maximum number of optimization iterations
  * `maxJacobians` : maximum number of Jacobian solves
  * `lambda` : initial Levenberg-Marquardt lambda [eps(Float32)]
  * `lambda_scale` : lambda scaling factor
  * `lambda_mu` : lambda multiplication factor μ [10]
  * `lambda_nu` : lambda multiplication factor ν [10]
  * `np_lambda` : number of parallel lambda solves
  * `show_trace` : shows solution trace [default=false]
  * `alwaysDoJacobian`: computer Jacobian each iteration [false]
  * `callback` : call back function for debugging

<a id='Mads.loadasciifile-Tuple{AbstractString}' href='#Mads.loadasciifile-Tuple{AbstractString}'>#</a>
**`Mads.loadasciifile`** &mdash; *Method*.



Load ASCII file

<a id='Mads.loadjsonfile-Tuple{AbstractString}' href='#Mads.loadjsonfile-Tuple{AbstractString}'>#</a>
**`Mads.loadjsonfile`** &mdash; *Method*.



Load a JSON file

<a id='Mads.loadmadsfile-Tuple{AbstractString}' href='#Mads.loadmadsfile-Tuple{AbstractString}'>#</a>
**`Mads.loadmadsfile`** &mdash; *Method*.



Load MADS input file defining a MADS problem dictionary

  * `Mads.loadmadsfile(filename)`
  * `Mads.loadmadsfile(filename; julia=false)`
  * `Mads.loadmadsfile(filename; julia=true)`

Arguments:

  * `filename` : input file name (e.g. `input_file_name.mads`)
  * `julia` : if `true`, force using `julia` parsing functions; if `false` (default), use `python` parsing functions [boolean]

Returns:

  * `madsdata` : Mads problem dictionary

Example: `md = loadmadsfile("input_file_name.mads")`

<a id='Mads.localsa-Tuple{Associative{K,V}}' href='#Mads.localsa-Tuple{Associative{K,V}}'>#</a>
**`Mads.localsa`** &mdash; *Method*.



Local sensitivity analysis based on eigen analysis of covariance matrix

Arguments:

  * `madsdata` : MADS problem dictionary
  * `madsdata` : MADS problem dictionary
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)
  * `par` : parameter set
  * `obs` : observations for the parameter set

<a id='Mads.long_tests_off-Tuple{}' href='#Mads.long_tests_off-Tuple{}'>#</a>
**`Mads.long_tests_off`** &mdash; *Method*.



Turn off execution of long MADS tests (default)

<a id='Mads.long_tests_on-Tuple{}' href='#Mads.long_tests_on-Tuple{}'>#</a>
**`Mads.long_tests_on`** &mdash; *Method*.



Turn on execution of long MADS tests (dangerous)

<a id='Mads.madscritical-Tuple{AbstractString}' href='#Mads.madscritical-Tuple{AbstractString}'>#</a>
**`Mads.madscritical`** &mdash; *Method*.



MADS critical error messages

<a id='Mads.madsdebug' href='#Mads.madsdebug'>#</a>
**`Mads.madsdebug`** &mdash; *Function*.



MADS debug messages (controlled by `quiet` and `debuglevel`)

<a id='Mads.madserror-Tuple{AbstractString}' href='#Mads.madserror-Tuple{AbstractString}'>#</a>
**`Mads.madserror`** &mdash; *Method*.



MADS error messages

<a id='Mads.madsinfo' href='#Mads.madsinfo'>#</a>
**`Mads.madsinfo`** &mdash; *Function*.



MADS information/status messages (controlled by quiet` and `verbositylevel`)

<a id='Mads.madsoutput' href='#Mads.madsoutput'>#</a>
**`Mads.madsoutput`** &mdash; *Function*.



MADS output (controlled by quiet` and `verbositylevel`)

<a id='Mads.madswarn-Tuple{AbstractString}' href='#Mads.madswarn-Tuple{AbstractString}'>#</a>
**`Mads.madswarn`** &mdash; *Method*.



MADS warning messages

<a id='Mads.makearrayconditionalloglikelihood-Tuple{Associative{K,V},Any}' href='#Mads.makearrayconditionalloglikelihood-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.makearrayconditionalloglikelihood`** &mdash; *Method*.



Make a conditional log likelihood function that accepts an array containing the opt parameters' values

<a id='Mads.makearrayfunction' href='#Mads.makearrayfunction'>#</a>
**`Mads.makearrayfunction`** &mdash; *Function*.



Make a version of the function `f` that accepts an array containing the optimal parameters' values

`Mads.makearrayfunction(madsdata, f)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `f` : ...

Returns:

  * `arrayfunction` : function accepting an array containing the optimal parameters' values

<a id='Mads.makearrayloglikelihood-Tuple{Associative{K,V},Any}' href='#Mads.makearrayloglikelihood-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.makearrayloglikelihood`** &mdash; *Method*.



Make a log likelihood function that accepts an array containing the opt parameters' values

<a id='Mads.makebigdt!-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.makebigdt!-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.makebigdt!`** &mdash; *Method*.



Setup BIG-DT problem

Arguments:

  * `madsdata` : MADS problem dictionary
  * `choice` : dictionary of BIG-DT choices (scenarios)

Returns:

  * `bigdtproblem` : BIG-DT problem type

<a id='Mads.makebigdt-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.makebigdt-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.makebigdt`** &mdash; *Method*.



Setup BIG-DT problem

Arguments:

  * `madsdata` : MADS problem dictionary
  * `choice` : dictionary of BIG-DT choices (scenarios)

Returns:

  * `bigdtproblem` : BIG-DT problem type

<a id='Mads.makecomputeconcentrations-Tuple{Associative{K,V}}' href='#Mads.makecomputeconcentrations-Tuple{Associative{K,V}}'>#</a>
**`Mads.makecomputeconcentrations`** &mdash; *Method*.



Create a function to compute concentrations for all the observation points using Anasol

`Mads.makecomputeconcentrations(madsdata)`

Arguments:

  * `madsdata` : MADS problem dictionary

Returns:

  * `computeconcentrations` : function to compute concentrations; `computeconcentrations` returns a dictionary of observations and model predicted concentrations

Examples:

`computeconcentrations()`

or

```
computeconcentrations = Mads.makecomputeconcentrations(madsdata)
paramkeys = Mads.getparamkeys(madsdata)
paramdict = OrderedDict(zip(paramkeys, map(key->madsdata["Parameters"][key]["init"], paramkeys)))
forward_preds = computeconcentrations(paramdict)
```

<a id='Mads.makedoublearrayfunction' href='#Mads.makedoublearrayfunction'>#</a>
**`Mads.makedoublearrayfunction`** &mdash; *Function*.



Make a version of the function `f` that accepts an array containing the optimal parameters' values, and returns an array of observations

`Mads.makedoublearrayfunction(madsdata, f)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `f` : ...

Returns:

  * `doublearrayfunction` : function accepting an array containing the optimal parameters' values, and returning an array of observations

<a id='Mads.makelmfunctions-Tuple{Associative{K,V}}' href='#Mads.makelmfunctions-Tuple{Associative{K,V}}'>#</a>
**`Mads.makelmfunctions`** &mdash; *Method*.



Make forward model, gradient, objective functions needed for Levenberg-Marquardt optimization

<a id='Mads.makelocalsafunction-Tuple{Associative{K,V}}' href='#Mads.makelocalsafunction-Tuple{Associative{K,V}}'>#</a>
**`Mads.makelocalsafunction`** &mdash; *Method*.



Make gradient function needed for local sensitivity analysis

<a id='Mads.makelogprior-Tuple{Associative{K,V}}' href='#Mads.makelogprior-Tuple{Associative{K,V}}'>#</a>
**`Mads.makelogprior`** &mdash; *Method*.



Make a function to compute the prior log-likelihood of the model parameters listed in the MADS problem dictionary `madsdata`

<a id='Mads.makemadscommandfunction-Tuple{Associative{K,V}}' href='#Mads.makemadscommandfunction-Tuple{Associative{K,V}}'>#</a>
**`Mads.makemadscommandfunction`** &mdash; *Method*.



Make MADS function to execute the model defined in the MADS problem dictionary `madsdata`

Usage:

```
Mads.makemadscommandfunction(madsdata)
```

MADS can be coupled with any internal or external model. The model coupling is defined in the MADS problem dictionary. The expectations is that for a given set of model inputs, the model will produce a model output that will be provided to MADS. The fields in the MADS problem dictionary that can be used to define the model coupling are:

  * `Model` : execute a Julia function defined in an input Julia file. The function that should accept a `parameter` dictionary with all the model parameters as an input argument and should return an `observation` dictionary with all the model predicted observations. MADS will execute the first function defined in the file.

  * `MADS model` : create a Julia function based on an input Julia file. The input file should contain a function that accepts as an argument the MADS problem dictionary. MADS will execute the first function defined in the file. This function should a create a Julia function that will accept a `parameter` dictionary with all the model parameters as an input argument and will return an `observation` dictionary with all the model predicted observations.

  * `Julia model` : execute an internal Julia function that accepts a `parameter` dictionary with all the model parameters as an input argument and will return an `observation` dictionary with all the model predicted observations.

  * `Command` : execute an external UNIX command or script that will execute an external model.

  * `Julia command` : execute a Julia script that will execute an external model. The Julia script is defined in an input Julia file. The input file should contain a function that accepts as an argument the MADS problem dictionary; MADS will execute the first function defined in the file. The Julia script should be capable to (1) execute the model (making a system call of an external model), (2) parse the model outputs, (3) return an `observation` dictionary with model predictions.

Both `Command` and `Julia command` can use different approaches to pass model parameters to the external model.

Only `Command` uses different approaches to get back the model outputs. The script defined under `Julia command` parses the model outputs using Julia.

The available options for writing model inputs and reading model outputs are as follows.

Options for writing model inputs:

  * `Templates` : template files for writing model input files as defined at http://mads.lanl.gov
  * `ASCIIParameters` : model parameters written in a ASCII file
  * `JLDParameters` : model parameters written in a JLD file
  * `YAMLParameters` : model parameters written in a YAML file
  * `JSONParameters` : model parameters written in a JSON file

Options for reading model outputs:

  * `Instructions` : instruction files for reading model output files as defined at http://mads.lanl.gov
  * `ASCIIPredictions` : model predictions read from a ASCII file
  * `JLDPredictions` : model predictions read from a JLD file
  * `YAMLPredictions` : model predictions read from a YAML file
  * `JSONPredictions` : model predictions read from a JSON file

<a id='Mads.makemadscommandfunctionandgradient-Tuple{Associative{K,V}}' href='#Mads.makemadscommandfunctionandgradient-Tuple{Associative{K,V}}'>#</a>
**`Mads.makemadscommandfunctionandgradient`** &mdash; *Method*.



Make MADS forward & gradient functions for the model defined in the MADS problem dictionary `madsdata`

<a id='Mads.makemadscommandgradient-Tuple{Associative{K,V}}' href='#Mads.makemadscommandgradient-Tuple{Associative{K,V}}'>#</a>
**`Mads.makemadscommandgradient`** &mdash; *Method*.



Make MADS gradient function to compute the parameter-space gradient for the model defined in the MADS problem dictionary `madsdata`

<a id='Mads.makemadsconditionalloglikelihood-Tuple{Associative{K,V}}' href='#Mads.makemadsconditionalloglikelihood-Tuple{Associative{K,V}}'>#</a>
**`Mads.makemadsconditionalloglikelihood`** &mdash; *Method*.



Make a function to compute the conditional log-likelihood of the model parameters conditioned on the model predictions/observations. Model parameters and observations are defined in the MADS problem dictionary `madsdata`.

<a id='Mads.makemadsloglikelihood-Tuple{Associative{K,V}}' href='#Mads.makemadsloglikelihood-Tuple{Associative{K,V}}'>#</a>
**`Mads.makemadsloglikelihood`** &mdash; *Method*.



Make a function to compute the log-likelihood for a given set of model parameters, associated model predictions and existing observations. The function can be provided as an external function in the MADS problem dictionary under `LogLikelihood` or computed internally.

<a id='Mads.maxtorealmaxFloat32!-Tuple{DataFrames.DataFrame}' href='#Mads.maxtorealmaxFloat32!-Tuple{DataFrames.DataFrame}'>#</a>
**`Mads.maxtorealmaxFloat32!`** &mdash; *Method*.



Scale down values larger than max(Float32) in a Dataframe `df` so that Gadfly can plot the data

<a id='Mads.modelinformationcriteria' href='#Mads.modelinformationcriteria'>#</a>
**`Mads.modelinformationcriteria`** &mdash; *Function*.



Model section information criteria

<a id='Mads.modobsweights!-Tuple{Associative{K,V},Number}' href='#Mads.modobsweights!-Tuple{Associative{K,V},Number}'>#</a>
**`Mads.modobsweights!`** &mdash; *Method*.



Modify (multiply) observation weights in the MADS problem dictionary

<a id='Mads.modwellweights!-Tuple{Associative{K,V},Number}' href='#Mads.modwellweights!-Tuple{Associative{K,V},Number}'>#</a>
**`Mads.modwellweights!`** &mdash; *Method*.



Modify (multiply) well weights in the MADS problem dictionary

<a id='Mads.montecarlo-Tuple{Associative{K,V}}' href='#Mads.montecarlo-Tuple{Associative{K,V}}'>#</a>
**`Mads.montecarlo`** &mdash; *Method*.



Monte Carlo analysis

`Mads.montecarlo(madsdata; N=100)`

Arguments:

  * `madsdata` : MADS problem dictionary sampling uniformly between mins/maxs
  * `N` : number of samples (default = 100)

Returns:

  * `outputdicts` : parameter dictionary containing the data arrays

Dumps:

  * YAML output file with the parameter dictionary containing the data arrays (`<mads_root_name>.mcresults.yaml`)

<a id='Mads.naive_get_deltax-Tuple{Array{T,2},Array{T,2},Array{T,1},Real}' href='#Mads.naive_get_deltax-Tuple{Array{T,2},Array{T,2},Array{T,1},Real}'>#</a>
**`Mads.naive_get_deltax`** &mdash; *Method*.



Naive Levenberg-Marquardt optimization: get the LM parameter space step

<a id='Mads.naive_levenberg_marquardt' href='#Mads.naive_levenberg_marquardt'>#</a>
**`Mads.naive_levenberg_marquardt`** &mdash; *Function*.



Naive Levenberg-Marquardt optimization

Arguments:

  * `f` : forward model function
  * `g` : gradient function for the forward model
  * `x0` : initial parameter guess
  * `o` : objective function
  * `tolX` : parameter space tolerance
  * `tolG` : parameter space update tolerance
  * `tolOF` : objective function update tolerance
  * `maxEval` : maximum number of model evaluations
  * `maxIter` : maximum number of optimization iterations
  * `lambda` : initial Levenberg-Marquardt lambda [100]
  * `lambda_mu` : lambda multiplication factor μ [10]
  * `np_lambda` : number of parallel lambda solves

<a id='Mads.naive_lm_iteration-Tuple{Function,Function,Function,Array{T,1},Array{T,1},Array{T,1}}' href='#Mads.naive_lm_iteration-Tuple{Function,Function,Function,Array{T,1},Array{T,1},Array{T,1}}'>#</a>
**`Mads.naive_lm_iteration`** &mdash; *Method*.



Naive Levenberg-Marquardt optimization: perform LM iteration

<a id='Mads.noplot-Tuple{}' href='#Mads.noplot-Tuple{}'>#</a>
**`Mads.noplot`** &mdash; *Method*.



Disable MADS plotting

<a id='Mads.obslineismatch-Tuple{AbstractString,Array{Regex,1}}' href='#Mads.obslineismatch-Tuple{AbstractString,Array{Regex,1}}'>#</a>
**`Mads.obslineismatch`** &mdash; *Method*.



Match an instruction line in the Mads instruction file with model input file

<a id='Mads.of-Tuple{Associative{K,V},Array{T,1}}' href='#Mads.of-Tuple{Associative{K,V},Array{T,1}}'>#</a>
**`Mads.of`** &mdash; *Method*.



Compute objective function

<a id='Mads.paramarray2dict-Tuple{Associative{K,V},Array{T,N}}' href='#Mads.paramarray2dict-Tuple{Associative{K,V},Array{T,N}}'>#</a>
**`Mads.paramarray2dict`** &mdash; *Method*.



Convert parameter array to a parameter dictionary of arrays

<a id='Mads.parametersample' href='#Mads.parametersample'>#</a>
**`Mads.parametersample`** &mdash; *Function*.



Independent sampling of model parameters defined in the MADS problem dictionary

Arguments:

  * `madsdata` : MADS problem dictionary
  * `numsamples` : number of samples
  * `parameterkey` : model parameter key
  * `init_dist` : if `true` use the distribution defined for initialization in the MADS problem dictionary (defined using `init_dist` parameter field); else use the regular distribution defined in the MADS problem dictionary (defined using `dist` parameter field)

<a id='Mads.paramrand-Tuple{Associative{K,V},AbstractString}' href='#Mads.paramrand-Tuple{Associative{K,V},AbstractString}'>#</a>
**`Mads.paramrand`** &mdash; *Method*.



Random numbers for a MADS model parameter defined by `parameterkey`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `parameterkey` : model parameter key
  * `numsamples` : number of samples
  * `paramdist` : dictionary with parameter distributions

<a id='Mads.parsemadsdata-Tuple{Associative{K,V}}' href='#Mads.parsemadsdata-Tuple{Associative{K,V}}'>#</a>
**`Mads.parsemadsdata`** &mdash; *Method*.



Parse loaded Mads problem dictionary

Arguments:

  * `madsdata` : Mads problem dictionary

<a id='Mads.partialof-Tuple{Associative{K,V},Associative{K,V},Regex}' href='#Mads.partialof-Tuple{Associative{K,V},Associative{K,V},Regex}'>#</a>
**`Mads.partialof`** &mdash; *Method*.



Compute the sum of squared residuals for observations that match a regular expression

<a id='Mads.plotgrid-Tuple{Associative{K,V},Array{Float64,N}}' href='#Mads.plotgrid-Tuple{Associative{K,V},Array{Float64,N}}'>#</a>
**`Mads.plotgrid`** &mdash; *Method*.



Plot a 3D grid solution based on model predictions in array `s`, initial parameters, or user provided parameter values

```
plotgrid(madsdata, s; addtitle=true, title="", filename="", format="")
plotgrid(madsdata; addtitle=true, title="", filename="", format="")
plotgrid(madsdata, parameters; addtitle=true, title="", filename="", format="")
```

Arguments:

  * `madsdata` : MADS problem dictionary
  * `parameters` : dictionary with model parameters
  * `s` : model predictions array
  * `addtitle` : add plot title [true]
  * `title` : plot title
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.plotmadsproblem-Tuple{Associative{K,V}}' href='#Mads.plotmadsproblem-Tuple{Associative{K,V}}'>#</a>
**`Mads.plotmadsproblem`** &mdash; *Method*.



Plot contaminant sources and wells defined in MADS problem dictionary

Arguments:

  * `madsdata` : MADS problem dictionary
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)
  * `keyword` : to be added in the filename

<a id='Mads.plotmass-Tuple{Any,Any,Any,AbstractString}' href='#Mads.plotmass-Tuple{Any,Any,Any,AbstractString}'>#</a>
**`Mads.plotmass`** &mdash; *Method*.



Plot injected/reduced contaminant mass

  * `Mads.plotmass(lambda, mass_injected, mass_reduced, filename="file_name")`

Arguments:

  * `lambda` : array with all the lambda values
  * `mass_injected` : array with associated total injected mass
  * `mass_reduced` : array with associated total reduced mass
  * `filename` : output filename for the generated plot
  * `format` : output plot format (`png`, `pdf`, etc.)

Dumps: image file with name `filename` and in specified `format`

<a id='Mads.plotmatches-Tuple{Associative{K,V}}' href='#Mads.plotmatches-Tuple{Associative{K,V}}'>#</a>
**`Mads.plotmatches`** &mdash; *Method*.



Plot the matches between model predictions and observations

```
plotmatches(madsdata; filename="", format="")
plotmatches(madsdata, param; filename="", format="")
plotmatches(madsdata, result; filename="", format="")
plotmatches(madsdata, result, r"NO3"; filename="", format="")
```

Arguments:

  * `madsdata` : MADS problem dictionary
  * `param` : dictionary with model parameters
  * `result` : dictionary with model predictions
  * `rx` : regular expression to filter the outputs
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.plotobsSAresults-Tuple{Associative{K,V},Any}' href='#Mads.plotobsSAresults-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.plotobsSAresults`** &mdash; *Method*.



Plot the sensitivity analysis results for the observations

Arguments:

  * `madsdata` : MADS problem dictionary
  * `result` : sensitivity analysis results
  * `filter` : string or regex to plot only observations containing `filter`
  * `keyword` : to be added in the auto-generated filename
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.plotrobustnesscurves-Tuple{Associative{K,V},Dict{K,V}}' href='#Mads.plotrobustnesscurves-Tuple{Associative{K,V},Dict{K,V}}'>#</a>
**`Mads.plotrobustnesscurves`** &mdash; *Method*.



Plot BIG-DT robustness curves

Arguments:

  * `madsdata` : MADS problem dictionary
  * `bigdtresults` : BIG-DT results
  * `filename` : output file name used to dump plots
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.plotseries-Tuple{Array{T,2},AbstractString}' href='#Mads.plotseries-Tuple{Array{T,2},AbstractString}'>#</a>
**`Mads.plotseries`** &mdash; *Method*.



Create plots of data series

Arguments:

  * `X` : matrix with the series data
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)
  * `xtitle` : x-axis title
  * `ytitle` : y-axis title
  * `title` : plot title
  * `name` : series name
  * `combined` : `true` by default

<a id='Mads.plotwellSAresults-Tuple{Associative{K,V},Any,Any}' href='#Mads.plotwellSAresults-Tuple{Associative{K,V},Any,Any}'>#</a>
**`Mads.plotwellSAresults`** &mdash; *Method*.



Plot the sensitivity analysis results for a given well in the MADS problem dictionary (wells class expected)

Arguments:

  * `madsdata` : MADS problem dictionary
  * `result` : sensitivity analysis results
  * `wellname` : well name
  * `xtitle` : x-axis title
  * `ytitle` : y-axis title
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.plotwellSAresults-Tuple{Associative{K,V},Any}' href='#Mads.plotwellSAresults-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.plotwellSAresults`** &mdash; *Method*.



Plot the sensitivity analysis results for all the wells in the MADS problem dictionary (wells class expected)

Arguments:

  * `madsdata` : MADS problem dictionary
  * `result` : sensitivity analysis results
  * `xtitle` : x-axis title
  * `ytitle` : y-axis title
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.printSAresults-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.printSAresults-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.printSAresults`** &mdash; *Method*.



Print sensitivity analysis results

<a id='Mads.quietoff-Tuple{}' href='#Mads.quietoff-Tuple{}'>#</a>
**`Mads.quietoff`** &mdash; *Method*.



Make MADS not quiet

<a id='Mads.quieton-Tuple{}' href='#Mads.quieton-Tuple{}'>#</a>
**`Mads.quieton`** &mdash; *Method*.



Make MADS quiet

<a id='Mads.readasciipredictions-Tuple{AbstractString}' href='#Mads.readasciipredictions-Tuple{AbstractString}'>#</a>
**`Mads.readasciipredictions`** &mdash; *Method*.



Read MADS predictions from an ASCII file

<a id='Mads.readjsonpredictions-Tuple{AbstractString}' href='#Mads.readjsonpredictions-Tuple{AbstractString}'>#</a>
**`Mads.readjsonpredictions`** &mdash; *Method*.



Read MADS model predictions from a JSON file

<a id='Mads.readobservations' href='#Mads.readobservations'>#</a>
**`Mads.readobservations`** &mdash; *Function*.



Read observations

<a id='Mads.readobservations_cmads-Tuple{Associative{K,V}}' href='#Mads.readobservations_cmads-Tuple{Associative{K,V}}'>#</a>
**`Mads.readobservations_cmads`** &mdash; *Method*.



Read observations using C Mads library

<a id='Mads.readyamlpredictions-Tuple{AbstractString}' href='#Mads.readyamlpredictions-Tuple{AbstractString}'>#</a>
**`Mads.readyamlpredictions`** &mdash; *Method*.



Read MADS model predictions from a YAML file `filename`

<a id='Mads.regexs2obs-Tuple{Any,Any,Any,Any}' href='#Mads.regexs2obs-Tuple{Any,Any,Any,Any}'>#</a>
**`Mads.regexs2obs`** &mdash; *Method*.



Get observations for a set of regular expressions

<a id='Mads.resetmodelruns-Tuple{}' href='#Mads.resetmodelruns-Tuple{}'>#</a>
**`Mads.resetmodelruns`** &mdash; *Method*.



Reset the model runs count to be equal to zero

<a id='Mads.residuals-Tuple{Associative{K,V},Array{T,1}}' href='#Mads.residuals-Tuple{Associative{K,V},Array{T,1}}'>#</a>
**`Mads.residuals`** &mdash; *Method*.



Compute residuals

<a id='Mads.reweighsamples-Tuple{Associative{K,V},Array{T,N},Array{T,1}}' href='#Mads.reweighsamples-Tuple{Associative{K,V},Array{T,N},Array{T,1}}'>#</a>
**`Mads.reweighsamples`** &mdash; *Method*.



Reweigh samples using importance sampling – returns a vector of log-likelihoods after reweighing

Arguments:

  * `madsdata` : MADS problem dictionary
  * `predictions` : the model predictions for each of the samples
  * `oldllhoods` : the log likelihoods of the parameters in the old distribution

Returns:

  * `newllhoods` : vector of log-likelihoods after reweighing

<a id='Mads.rosenbrock-Tuple{Array{T,1}}' href='#Mads.rosenbrock-Tuple{Array{T,1}}'>#</a>
**`Mads.rosenbrock`** &mdash; *Method*.



Rosenbrock test function

<a id='Mads.rosenbrock2_gradient_lm-Tuple{Any}' href='#Mads.rosenbrock2_gradient_lm-Tuple{Any}'>#</a>
**`Mads.rosenbrock2_gradient_lm`** &mdash; *Method*.



Parameter gradients of the Rosenbrock test function

<a id='Mads.rosenbrock2_lm-Tuple{Any}' href='#Mads.rosenbrock2_lm-Tuple{Any}'>#</a>
**`Mads.rosenbrock2_lm`** &mdash; *Method*.



Rosenbrock test function (more difficult to solve)

<a id='Mads.rosenbrock_gradient!-Tuple{Array{T,1},Array{T,1}}' href='#Mads.rosenbrock_gradient!-Tuple{Array{T,1},Array{T,1}}'>#</a>
**`Mads.rosenbrock_gradient!`** &mdash; *Method*.



Parameter gradients of the Rosenbrock test function

<a id='Mads.rosenbrock_gradient_lm-Tuple{Array{T,1}}' href='#Mads.rosenbrock_gradient_lm-Tuple{Array{T,1}}'>#</a>
**`Mads.rosenbrock_gradient_lm`** &mdash; *Method*.



Parameter gradients of the Rosenbrock test function for LM optimization (returns the gradients for the 2 components separetely)

<a id='Mads.rosenbrock_hessian!-Tuple{Array{T,1},Array{T,2}}' href='#Mads.rosenbrock_hessian!-Tuple{Array{T,1},Array{T,2}}'>#</a>
**`Mads.rosenbrock_hessian!`** &mdash; *Method*.



Parameter Hessian of the Rosenbrock test function

<a id='Mads.rosenbrock_lm-Tuple{Array{T,1}}' href='#Mads.rosenbrock_lm-Tuple{Array{T,1}}'>#</a>
**`Mads.rosenbrock_lm`** &mdash; *Method*.



Rosenbrock test function for LM optimization (returns the 2 components separetely)

<a id='Mads.runcmd' href='#Mads.runcmd'>#</a>
**`Mads.runcmd`** &mdash; *Function*.



Run external command and pipe stdout and stderr

<a id='Mads.saltelli-Tuple{Associative{K,V}}' href='#Mads.saltelli-Tuple{Associative{K,V}}'>#</a>
**`Mads.saltelli`** &mdash; *Method*.



Saltelli sensitivity analysis

Arguments:

  * `madsdata` : MADS problem dictionary
  * `N` : number of samples
  * `seed` : initial random seed
  * `restartdir` : directory where files will be stored containing model results for fast simulation restarts
  * `parallel` : set to true if the model runs should be performed in parallel

<a id='Mads.saltellibrute-Tuple{Associative{K,V}}' href='#Mads.saltellibrute-Tuple{Associative{K,V}}'>#</a>
**`Mads.saltellibrute`** &mdash; *Method*.



Saltelli sensitivity analysis (brute force)

Arguments:

  * `madsdata` : MADS problem dictionary
  * `N` : number of samples
  * `seed` : initial random seed

<a id='Mads.saltellibruteparallel-Tuple{Any,Any}' href='#Mads.saltellibruteparallel-Tuple{Any,Any}'>#</a>
**`Mads.saltellibruteparallel`** &mdash; *Method*.



Parallel version of saltellibrute

<a id='Mads.saltelliparallel-Tuple{Any,Any}' href='#Mads.saltelliparallel-Tuple{Any,Any}'>#</a>
**`Mads.saltelliparallel`** &mdash; *Method*.



Parallel version of saltelli

<a id='Mads.saltelliprintresults2-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.saltelliprintresults2-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.saltelliprintresults2`** &mdash; *Method*.



Print sensitivity analysis results (method 2)

<a id='Mads.savecalibrationresults-Tuple{Associative{K,V},Any}' href='#Mads.savecalibrationresults-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.savecalibrationresults`** &mdash; *Method*.



Save calibration results

<a id='Mads.savemadsfile' href='#Mads.savemadsfile'>#</a>
**`Mads.savemadsfile`** &mdash; *Function*.



Save MADS problem dictionary `madsdata` in MADS input file `filename`

  * `Mads.savemadsfile(madsdata)`
  * `Mads.savemadsfile(madsdata, "test.mads")`
  * `Mads.savemadsfile(madsdata, parameters, "test.mads")`
  * `Mads.savemadsfile(madsdata, parameters, "test.mads", explicit=true)`

Arguments:

  * `madsdata` : Mads problem dictionary
  * `parameters` : Dictinary with parameters (optional)
  * `filename` : input file name (e.g. `input_file_name.mads`)
  * `julia` : if `true` use Julia JSON module to save
  * `explicit` : if `true` ignores MADS YAML file modifications and rereads the original input file

<a id='Mads.savemcmcresults-Tuple{Array{T,N},AbstractString}' href='#Mads.savemcmcresults-Tuple{Array{T,N},AbstractString}'>#</a>
**`Mads.savemcmcresults`** &mdash; *Method*.



Save MCMC chain in a file

<a id='Mads.scatterplotsamples-Tuple{Associative{K,V},Array{T,2},AbstractString}' href='#Mads.scatterplotsamples-Tuple{Associative{K,V},Array{T,2},AbstractString}'>#</a>
**`Mads.scatterplotsamples`** &mdash; *Method*.



Create histogram/scatter plots of model parameter samples

Arguments:

  * `madsdata` : MADS problem dictionary
  * `samples` : matrix with model parameters
  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.searchdir-Tuple{Regex}' href='#Mads.searchdir-Tuple{Regex}'>#</a>
**`Mads.searchdir`** &mdash; *Method*.



Get files in the current directory or in a directory defined by `path` matching pattern `key` which can be a string or regular expression

  * `Mads.searchdir(key)`
  * `Mads.searchdir(key; path = ".")`

Arguments:

  * `key` : matching pattern for Mads input files (string or regular expression accepted)
  * `path` : search directory for the mads input files

Returns:

  * `filename` : an array with file names matching the pattern in the specified directory

<a id='Mads.set_nprocs_per_task' href='#Mads.set_nprocs_per_task'>#</a>
**`Mads.set_nprocs_per_task`** &mdash; *Function*.



Set number of processors needed for each parallel task at each node

<a id='Mads.setallparamsoff!-Tuple{Associative{K,V}}' href='#Mads.setallparamsoff!-Tuple{Associative{K,V}}'>#</a>
**`Mads.setallparamsoff!`** &mdash; *Method*.



Set all parameters OFF

<a id='Mads.setallparamson!-Tuple{Associative{K,V}}' href='#Mads.setallparamson!-Tuple{Associative{K,V}}'>#</a>
**`Mads.setallparamson!`** &mdash; *Method*.



Set all parameters ON

<a id='Mads.setdebuglevel-Tuple{Int64}' href='#Mads.setdebuglevel-Tuple{Int64}'>#</a>
**`Mads.setdebuglevel`** &mdash; *Method*.



Set MADS debug level

<a id='Mads.setdefaultplotformat-Tuple{AbstractString}' href='#Mads.setdefaultplotformat-Tuple{AbstractString}'>#</a>
**`Mads.setdefaultplotformat`** &mdash; *Method*.



Set the default plot format (`SVG` is the default format)

<a id='Mads.setdir-Tuple{Any}' href='#Mads.setdir-Tuple{Any}'>#</a>
**`Mads.setdir`** &mdash; *Method*.



Set the working directory (for parallel environments)

```
@everywhere Mads.setdir()
@everywhere Mads.setdir("/home/monty")
```

<a id='Mads.setdynamicmodel-Tuple{Associative{K,V},Function}' href='#Mads.setdynamicmodel-Tuple{Associative{K,V},Function}'>#</a>
**`Mads.setdynamicmodel`** &mdash; *Method*.



Set Dynamic Model for MADS model calls using internal Julia functions

<a id='Mads.setmadsinputfile-Tuple{AbstractString}' href='#Mads.setmadsinputfile-Tuple{AbstractString}'>#</a>
**`Mads.setmadsinputfile`** &mdash; *Method*.



Set a default MADS input file

`Mads.setmadsinputfile(filename)`

Arguments:

  * `filename` : input file name (e.g. `input_file_name.mads`)

<a id='Mads.setobservationtargets!-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.setobservationtargets!-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.setobservationtargets!`** &mdash; *Method*.



Set observations (calibration targets) in the MADS problem dictionary based on a `predictions` dictionary

<a id='Mads.setobstime!' href='#Mads.setobstime!'>#</a>
**`Mads.setobstime!`** &mdash; *Function*.



Set observation time based on the observation name in the MADS problem dictionary

Usage:

```
Mads.setobstime!(madsdata, separator)
Mads.setobstime!(madsdata, regex)
```

Arguments:

  * `madsdata` : MADS problem dictionary
  * `separator` : string to separator
  * `regex` : regular expression to match

Examples:

```
Mads.setobstime!(madsdata, "_t")
Mads.setobstime!(madsdata, r"[A-x]*_t([0-9,.]+)")
```

<a id='Mads.setobsweights!-Tuple{Associative{K,V},Number}' href='#Mads.setobsweights!-Tuple{Associative{K,V},Number}'>#</a>
**`Mads.setobsweights!`** &mdash; *Method*.



Set observation weights in the MADS problem dictionary

<a id='Mads.setparamoff!-Tuple{Associative{K,V},Any}' href='#Mads.setparamoff!-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.setparamoff!`** &mdash; *Method*.



Set a specific parameter with a key `parameterkey` OFF

<a id='Mads.setparamon!-Tuple{Associative{K,V},AbstractString}' href='#Mads.setparamon!-Tuple{Associative{K,V},AbstractString}'>#</a>
**`Mads.setparamon!`** &mdash; *Method*.



Set a specific parameter with a key `parameterkey` ON

<a id='Mads.setparamsdistnormal!-Tuple{Associative{K,V},Any,Any}' href='#Mads.setparamsdistnormal!-Tuple{Associative{K,V},Any,Any}'>#</a>
**`Mads.setparamsdistnormal!`** &mdash; *Method*.



Set normal parameter distributions for all the model parameters in the MADS problem dictionary

`Mads.setparamsdistnormal!(madsdata, mean, stddev)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `mean` : array with the mean values
  * `stddev` : array with the standard deviation values

<a id='Mads.setparamsdistuniform!-Tuple{Associative{K,V},Any,Any}' href='#Mads.setparamsdistuniform!-Tuple{Associative{K,V},Any,Any}'>#</a>
**`Mads.setparamsdistuniform!`** &mdash; *Method*.



Set uniform parameter distributions for all the model parameters in the MADS problem dictionary

`Mads.setparamsdistuniform!(madsdata, min, max)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `min` : array with the minimum values
  * `max` : array with the maximum values

<a id='Mads.setparamsinit!-Tuple{Associative{K,V},Associative{K,V}}' href='#Mads.setparamsinit!-Tuple{Associative{K,V},Associative{K,V}}'>#</a>
**`Mads.setparamsinit!`** &mdash; *Method*.



Set initial parameter guesses in the MADS dictionary

`Mads.setparamsinit!(madsdata, paramdict)`

Arguments:

  * `madsdata` : MADS problem dictionary
  * `paramdict` : dictionary with initial model parameter values

<a id='Mads.setplotfileformat-Tuple{AbstractString,AbstractString}' href='#Mads.setplotfileformat-Tuple{AbstractString,AbstractString}'>#</a>
**`Mads.setplotfileformat`** &mdash; *Method*.



Set image file `format` based on the `filename` extension, or sets the `filename` extension based on the requested `format`. The default `format` is `SVG`. `PNG`, `PDF`, `ESP`, and `PS` are also supported.

`Mads.setplotfileformat(filename::AbstractString, format::AbstractString)`

Arguments:

  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

Returns:

  * `filename` : output file name
  * `format` : output plot format (`png`, `pdf`, etc.)

<a id='Mads.setprocs-Tuple{Int64,Int64}' href='#Mads.setprocs-Tuple{Int64,Int64}'>#</a>
**`Mads.setprocs`** &mdash; *Method*.



Set the number of processors to `np` and the number of threads to `nt`

Usage:

```
Mads.setprocs(4)
Mads.setprocs(4, 8)
```

Arguments:

  * `np` : number of processors
  * `nt` : number of threads

<a id='Mads.setprocs-Tuple{}' href='#Mads.setprocs-Tuple{}'>#</a>
**`Mads.setprocs`** &mdash; *Method*.



Set the available processors based on environmental variables. Supports SLURM only at the moment.

Usage:

```
Mads.setprocs()
Mads.setprocs(ntasks_per_node=4)
Mads.setprocs(ntasks_per_node=32, mads_servers=true)
Mads.setprocs(ntasks_per_node=64, machinenames=["madsmax", "madszem"])
Mads.setprocs(ntasks_per_node=64, mads_servers=true, exename="/home/monty/bin/julia", dir="/home/monty")
```

Optional arguments:

  * `ntasks_per_node` : number of parallel tasks per 
  * `nprocs_per_task` : number of processors needed for each parallel task at each node
  * `machinenames` : array with machines names to invoked
  * `dir` : common directory shared by all the jobs
  * `exename` : location of the julia executable (the same version of julia is needed on all the workers)
  * `mads_servers` : if `true` use MADS servers (LANL only)
  * `quiet` : suppress output [default `true`]
  * `test` : test the servers and connect to each one ones at a time [default `false`]

<a id='Mads.setseed-Tuple{Number}' href='#Mads.setseed-Tuple{Number}'>#</a>
**`Mads.setseed`** &mdash; *Method*.



Set current seed

<a id='Mads.settarget!-Tuple{Associative{K,V},Any}' href='#Mads.settarget!-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.settarget!`** &mdash; *Method*.



Set observation target

<a id='Mads.settime!-Tuple{Associative{K,V},Any}' href='#Mads.settime!-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.settime!`** &mdash; *Method*.



Set observation time

<a id='Mads.setverbositylevel-Tuple{Int64}' href='#Mads.setverbositylevel-Tuple{Int64}'>#</a>
**`Mads.setverbositylevel`** &mdash; *Method*.



Set MADS verbosity level

<a id='Mads.setweight!-Tuple{Associative{K,V},Any}' href='#Mads.setweight!-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.setweight!`** &mdash; *Method*.



Set observation weight

<a id='Mads.setwellweights!-Tuple{Associative{K,V},Number}' href='#Mads.setwellweights!-Tuple{Associative{K,V},Number}'>#</a>
**`Mads.setwellweights!`** &mdash; *Method*.



Set well weights in the MADS problem dictionary

<a id='Mads.showallparameters-Tuple{Associative{K,V}}' href='#Mads.showallparameters-Tuple{Associative{K,V}}'>#</a>
**`Mads.showallparameters`** &mdash; *Method*.



Show all parameters in the MADS problem dictionary

<a id='Mads.showobservations-Tuple{Associative{K,V}}' href='#Mads.showobservations-Tuple{Associative{K,V}}'>#</a>
**`Mads.showobservations`** &mdash; *Method*.



Show observations in the MADS problem dictionary

<a id='Mads.showparameters-Tuple{Associative{K,V}}' href='#Mads.showparameters-Tuple{Associative{K,V}}'>#</a>
**`Mads.showparameters`** &mdash; *Method*.



Show optimizable parameters in the MADS problem dictionary

<a id='Mads.sinetransform-Tuple{Array{T,1},Array{T,1},Array{T,1},Array{T,1}}' href='#Mads.sinetransform-Tuple{Array{T,1},Array{T,1},Array{T,1},Array{T,1}}'>#</a>
**`Mads.sinetransform`** &mdash; *Method*.



Sine transformation of model parameters

<a id='Mads.sinetransformfunction-Tuple{Function,Array{T,1},Array{T,1},Array{T,1}}' href='#Mads.sinetransformfunction-Tuple{Function,Array{T,1},Array{T,1},Array{T,1}}'>#</a>
**`Mads.sinetransformfunction`** &mdash; *Method*.



Sine transformation of a function

<a id='Mads.sinetransformgradient-Tuple{Function,Array{T,1},Array{T,1},Array{T,1}}' href='#Mads.sinetransformgradient-Tuple{Function,Array{T,1},Array{T,1},Array{T,1}}'>#</a>
**`Mads.sinetransformgradient`** &mdash; *Method*.



Sine transformation of a gradient function

<a id='Mads.spaghettiplot-Tuple{Associative{K,V},Int64}' href='#Mads.spaghettiplot-Tuple{Associative{K,V},Int64}'>#</a>
**`Mads.spaghettiplot`** &mdash; *Method*.



Generate a combined spaghetti plot for the `selected` (`type != null`) model parameter

```
Mads.spaghettiplot(madsdata, paramdictarray; filename="", keyword = "", format="", xtitle="X", ytitle="Y", obs_plot_dots=true)
Mads.spaghettiplot(madsdata, obsmdictarray; filename="", keyword = "", format="", xtitle="X", ytitle="Y", obs_plot_dots=true)
Mads.spaghettiplot(madsdata, number_of_samples; filename="", keyword = "", format="", xtitle="X", ytitle="Y", obs_plot_dots=true)
```

Arguments:

  * `madsdata` : MADS problem dictionary
  * `paramdictarray` : parameter dictionary array containing the data arrays to be plotted
  * `obsdictarray` : observation dictionary array containing the data arrays to be plotted
  * `number_of_samples` : number of samples
  * `filename` : output file name used to output the produced plots
  * `keyword` : keyword to be added in the file name used to output the produced plots (if `filename` is not defined)
  * `format` : output plot format (`png`, `pdf`, etc.)
  * `xtitle` : `x` axis title
  * `ytitle` : `y` axis title
  * `obs_plot_dots` : plot observation as dots (`true` [default] or `false`)
  * `seed` : initial random seed

Returns: `none`

Dumps:

  * Image file with a spaghetti plot (`<mads_rootname>-<keyword>-<number_of_samples>-spaghetti.<default_image_extension>`)

<a id='Mads.spaghettiplots-Tuple{Associative{K,V},Int64}' href='#Mads.spaghettiplots-Tuple{Associative{K,V},Int64}'>#</a>
**`Mads.spaghettiplots`** &mdash; *Method*.



Generate separate spaghetti plots for each `selected` (`type != null`) model parameter

```
Mads.spaghettiplots(madsdata, paramdictarray; format="", keyword="", xtitle="X", ytitle="Y", obs_plot_dots=true)
Mads.spaghettiplots(madsdata, number_of_samples; format="", keyword="", xtitle="X", ytitle="Y", obs_plot_dots=true)
```

Arguments:

  * `madsdata` : MADS problem dictionary
  * `paramdictarray` : parameter dictionary containing the data arrays to be plotted
  * `number_of_samples` : number of samples
  * `keyword` : keyword to be added in the file name used to output the produced plots
  * `format` : output plot format (`png`, `pdf`, etc.)
  * `xtitle` : `x` axis title
  * `ytitle` : `y` axis title
  * `obs_plot_dots` : plot observation as dots (`true` [default] or `false`)
  * `seed` : initial random seed

Dumps:

  * A series of image files with spaghetti plots for each `selected` (`type != null`) model parameter (`<mads_rootname>-<keyword>-<param_key>-<number_of_samples>-spaghetti.<default_image_extension>`)

<a id='Mads.sprintf-Tuple' href='#Mads.sprintf-Tuple'>#</a>
**`Mads.sprintf`** &mdash; *Method*.



Convert `@sprintf` macro into `sprintf` function

<a id='Mads.status-Tuple{}' href='#Mads.status-Tuple{}'>#</a>
**`Mads.status`** &mdash; *Method*.



Status of the Mads modules

<a id='Mads.tag' href='#Mads.tag'>#</a>
**`Mads.tag`** &mdash; *Function*.



Tag the Mads modules with a default argument `:patch`

<a id='Mads.test' href='#Mads.test'>#</a>
**`Mads.test`** &mdash; *Function*.



Execute Mads tests (the tests will be in parallel if processors are defined)

<a id='Mads.testj' href='#Mads.testj'>#</a>
**`Mads.testj`** &mdash; *Function*.



Execute Mads tests using Julia Pkg.test (the default Pkg.test in Julia is executed in serial)

<a id='Mads.void2nan!-Tuple{Associative{K,V}}' href='#Mads.void2nan!-Tuple{Associative{K,V}}'>#</a>
**`Mads.void2nan!`** &mdash; *Method*.



Convert Void's into NaN's in a dictionary

<a id='Mads.weightedstats-Tuple{Array{T,N},Array{T,1}}' href='#Mads.weightedstats-Tuple{Array{T,N},Array{T,1}}'>#</a>
**`Mads.weightedstats`** &mdash; *Method*.



Get weighted mean and variance samples

Arguments:

  * `samples` : array of samples
  * `llhoods` : vector of log-likelihoods

Returns:

  * `mean` : vector of sample means
  * `var` : vector of sample variances

<a id='Mads.welloff!-Tuple{Any,AbstractString}' href='#Mads.welloff!-Tuple{Any,AbstractString}'>#</a>
**`Mads.welloff!`** &mdash; *Method*.



Turn off a specific well in the MADS problem dictionary

<a id='Mads.wellon!-Tuple{Associative{K,V},AbstractString}' href='#Mads.wellon!-Tuple{Associative{K,V},AbstractString}'>#</a>
**`Mads.wellon!`** &mdash; *Method*.



Turn on a specific well in the MADS problem dictionary

<a id='Mads.wells2observations!-Tuple{Associative{K,V}}' href='#Mads.wells2observations!-Tuple{Associative{K,V}}'>#</a>
**`Mads.wells2observations!`** &mdash; *Method*.



Convert `Wells` class to `Observations` class in the MADS problem dictionary

<a id='Mads.writeparameters-Tuple{Associative{K,V},Any}' href='#Mads.writeparameters-Tuple{Associative{K,V},Any}'>#</a>
**`Mads.writeparameters`** &mdash; *Method*.



Write parameters

<a id='Mads.writeparameters-Tuple{Associative{K,V}}' href='#Mads.writeparameters-Tuple{Associative{K,V}}'>#</a>
**`Mads.writeparameters`** &mdash; *Method*.



Write initial parameters

<a id='Mads.writeparametersviatemplate-Tuple{Any,Any,Any}' href='#Mads.writeparametersviatemplate-Tuple{Any,Any,Any}'>#</a>
**`Mads.writeparametersviatemplate`** &mdash; *Method*.



Write `parameters` via MADS template (`templatefilename`) to an output file (`outputfilename`)

