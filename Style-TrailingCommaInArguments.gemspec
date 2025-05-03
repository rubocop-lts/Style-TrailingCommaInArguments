# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "bug-repro"
  spec.version = "0.1.0"
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  spec.summary = "I'm just here for the bugs"
  spec.description = <<~DESC
    A bug repro 
  DESC
  spec.homepage = "https://github.com/kettle-rb/#{spec.name}"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = "https://kettle-rb.gitlab.io/"
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # Splats (alphabetical)
  spec.files = Dir[
    "lib/**/*.rb",
    "sig/**/*.rbs",
  ]
  # Automatically included with gem package, no need to list again in files.
  # Files (alphabetical)
  spec.extra_rdoc_files = Dir[
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "LICENSE.txt",
    "README.md",
  ]
  spec.rdoc_options += [
    "--title",
    "#{spec.name} - #{spec.summary}",
    "--main",
    "README.md",
    "--line-numbers",
    "--inline-source",
    "--quiet",
  ]
  spec.require_paths = ["lib"]
  spec.bindir = "exe"
  spec.executables = []

  # Release Tasks
  spec.add_development_dependency("rake", "~> 13.0")

  # Linting
  spec.add_development_dependency("rubocop-shopify")

  # Testing
  spec.add_development_dependency("rspec", "~> 3.13")
end
