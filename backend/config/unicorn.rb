require "unicorn"
require "./config/environment"

listen "0.0.0.0:80"
logger LOGGER
