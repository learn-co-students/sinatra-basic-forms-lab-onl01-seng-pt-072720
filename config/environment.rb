ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
# require_all 'models'
Dir["./models/*.rb"].each {|file| require file }