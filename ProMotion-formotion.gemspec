# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ProMotion/formotion/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Stephan Toggweiler"]
  gem.email         = ["stephan@rheoli.net"]
  gem.description   = "ProMotion-formotion bind ProMotion and formotion together."
  gem.summary       = "
                        ProMotion is a new way to organize RubyMotion apps. Instead of dealing
                        with UIViewControllers, you work with Screens. Screens are
                        a logical way to think of your app and include a ton of great
                        utilities to make iOS development more like Ruby and less like Objective-C.
                      "
  gem.homepage      = "https://github.com/rheoli/ProMotion-formotion"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ProMotion-formotion"
  gem.require_paths = ["lib"]
  gem.version       = ProMotion::Formotion::VERSION
  gem.add_runtime_dependency("ProMotion", ">= 1.1.1")
<<<<<<< HEAD
  gem.add_runtime_dependency("formotion", ">= 1.4.0")
  gem.add_runtime_dependency("motion-require", ">= 0.0.3")
=======
  gem.add_runtime_dependency("formotion", ">= 1.6")
  gem.add_runtime_dependency("motion-require", ">= 0.1.1")
>>>>>>> 1a9df0c106b68173e0faef5ce9d93871340ab715
end

