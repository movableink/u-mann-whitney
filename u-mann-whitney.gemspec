# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "u_mann_whitney/version"

Gem::Specification.new do |spec|
  spec.name          = "u-mann-whitney"
  spec.version       = UMannWhitney::VERSION
  spec.authors       = ["Claudio Bustos", "Carlos Agarie", "Extracted by Michael Nutt"]
  spec.email         = ["michael@nuttnet.net"]

  spec.summary       = %q{Non-parametric test for assessing whether two independent samples of observations come from the same distribution. Extracted from StatSample (https://github.com/sciruby/statsample)}
  spec.description   = %q{Non-parametric test for assessing whether two independent samples of observations come from the same distribution. Extracted from StatSample (https://github.com/sciruby/statsample)}
  spec.homepage      = "https://github.com/movableink/u-mann-whitney"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "daru", "~> 0.1"
  spec.add_runtime_dependency "distribution", "~> 0.7"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
