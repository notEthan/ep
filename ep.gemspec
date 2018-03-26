lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ep/version"

Gem::Specification.new do |spec|
  spec.name   = "ep"
  spec.version = EP::VERSION
  spec.authors = ["Ethan"]
  spec.email  = ["ethan.ep@unth.net"]

  spec.summary    = 'ep'
  spec.description = 'ep'
  spec.homepage   = "https://github.com/notEthan/ep"
  spec.license   = "MIT"

  ignore_files = %w(.gitignore .travis.yml Gemfile Rakefile test)
  ignore_files_re = %r{\A(#{ignore_files.map { |f| Regexp.escape(f) }.join('|')})(/|\z)}
  spec.files        = `git ls-files -z`.split("\x0").reject { |f| f.match(ignore_files_re) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
