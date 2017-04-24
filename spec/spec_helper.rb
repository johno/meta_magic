require 'rubygems'
require 'bundler/setup'
require 'rspec'

require 'action_controller'
require 'meta_magic'

class FakeHelper
  include MetaMagic::Helper
end

class FakeThing
end

class FakeThingsController < ActionController::Base
  include MetaMagic::Controller
end

class NoModelController < ActionController::Base
  include MetaMagic::Controller
end

