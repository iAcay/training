require 'rack'
require_relative 'app'
require_relative 'middleware/logging'

# Reload source after change
use Rack::Reloader, 0

# Serve all requests beginning with /public 
# from the "public" folder 
use Rack::Static, urls: ['/public', "/favicon.ico"]

# Logging middleware
use Logging

run App.new
