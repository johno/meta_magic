require 'rubygems'
require 'bundler/setup'
require 'rspec'

require 'action_controller'
require 'meta_magic'

RSpec.configure do |config|
  config.color_enabled = true
end

class FakeHelper
  include MetaMagic::Helper
end

class FakeThing
end

class FakeThingsController < ActionController::Base
  include MetaMagic::Controller
end
