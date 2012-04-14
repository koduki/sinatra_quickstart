# Disable Rake-environment-task framework detection by uncommenting/setting to false
# Warbler.framework_detection = false

# Warbler web application assembly configuration file
Warbler::Config.new do |config|
  config.dirs = %w(app config tmp)
  config.includes = FileList["init.rb"]
  config.gems += ["sinatra"]
  config.gems -= ["rails"]
  config.gem_dependencies = true
end
