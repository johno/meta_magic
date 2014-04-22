require 'spec_helper'

describe MetaMagic::Controller do

  let(:controller) { FakeThingsController.new }

  subject { controller }

  it { should respond_to(:get_model_instance_variable) }
  it { should respond_to(:set_model_instance_variable) }
end
