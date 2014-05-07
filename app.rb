require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'warden'
require 'bcrypt'

class App < ActiveRecord::Base
  include BCrypt
end
