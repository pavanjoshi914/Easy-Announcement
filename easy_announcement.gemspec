# frozen_string_literal: true

require_relative "lib/easy_announcement/version"

Gem::Specification.new do |spec|
  spec.name          = "easy_announcement"
  spec.version       = EasyAnnouncement::VERSION
  spec.authors       = ["Pavan Joshi"]
  spec.email         = ["pavanj914@gmail.com"]

  spec.summary       = "Easy to Integrate and complete solution to display site-wide announcements with i18n support"
  spec.description   = "This gem is shipped with pre-created dashboard, migrations, UI and many more. Most importantly gem provides rich functionalities with giving a begineer friendly integration, get started with Easy Announcement!"
  spec.homepage      = "https://github.com/pavanjoshi914/Easy-Announcement.git"
  spec.extra_rdoc_files = ["README.md"]
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10.0"
  spec.add_development_dependency "rubocop", "~> 1.20.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
