require 'rubygems'
require 'bundler/setup'
require 'rspec'

require 'meta_magic'

RSpec.configure do |config|
  config.color_enabled = true
end

class FakeHelper
  include MetaMagic::Helper
end

class FakeThingsController
  include MetaMagic::Controller
end
