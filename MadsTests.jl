using Mads
Logging.configure(level=Logging.OFF)

include("tests/optimization_rosenbrock.jl")

if isdefined(ARGS) && ARGS[1] == "doslowtests"
	cd("examples/wells-short")
	include("examples/wells-short/optimization_wells.jl")
	cd("../..")

	# Optimization of external YAML problem
	cd("tests")
	include("tests/optimization_external_yaml_problem.jl") # WORKS but slow
	cd("..")

	# external execution test using ASCII files
	cd("tests")
	include("tests/optimization_external_ascii_problem.jl")
	cd("..")
else
	warn("skipping slow tests")
end

# internal execution test
include("tests/optimization_linear_problem.jl")
include("tests/optimization_linear_problem_nlopt.jl")
# senstivity
include("tests/saltelli_sensitvity_analysis.jl")
include("tests/saltelli_sensitvity_analysis_parallel.jl")
include("tests/bayesian_sampling.jl")
cd("tests")
include("tests/montecarlo.jl")
cd("..")
include("tests/gsl_call.jl")
