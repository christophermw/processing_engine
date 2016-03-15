# This file is used by Rack-based servers to start the application.

# IFrame handling
require 'rack/iframe'
use Rack::Iframe

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
