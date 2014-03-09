$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
Bundler.require(:development)

Motion::Project::App.setup do |app|
  app.name = 'ProMotion-formotion-Test'
  app.version = "0.1.1"
  #app.redgreen_style = :full # :focused, :full
  #app.frameworks += %w(CoreLocation MapKit)

  # Devices
  app.deployment_target = "6.0"
  app.device_family = [:ipad] # so we can test split screen capability
end