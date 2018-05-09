require "sinatra"
require "sinatra/reloader" if development?
require_relative "controllers/person_controller.rb"

run PersonController
