# coding: utf-8
require './lib/rubysl/json/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-json"
  spec.version       = RubySL::JSON::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library json.}
  spec.summary       = %q{Ruby standard library json.}
  spec.homepage      = "https://github.com/rubysl/rubysl-json"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = [ "ext/rubysl/json/parser/extconf.rb",
                         "ext/rubysl/json/generator/extconf.rb"
                       ]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
  spec.add_development_dependency "rubysl-prettyprint", "~> 2.0"
end
