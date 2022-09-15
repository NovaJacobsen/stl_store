ENV["RACK_ENV"] ||= "development"
APP_ROOT = File.realdirpath(File.expand_path("..", __dir__))
$LOAD_PATH.unshift(APP_ROOT)

require "logger"

LOGGER = Logger.new(STDOUT)
LOGGER.level = Logger::INFO
