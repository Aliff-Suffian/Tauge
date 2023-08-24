require 'sinatra'
require 'sinatra/activerecord'
require 'rack/method_override'

use Rack::MethodOverride

require File.expand_path(File.join('controllers', 'application_controller'))
require File.expand_path(File.join('models', 'users'))












