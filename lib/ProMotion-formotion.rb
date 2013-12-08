unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require "formotion"
require "motion-require"
require "ProMotion/formotion/version"

Motion::Require.all(Dir.glob(File.expand_path('../ProMotion/**/*.rb', __FILE__)))
