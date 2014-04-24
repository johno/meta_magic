require 'spec_helper'

describe MetaMagic::Controller do

  let(:controller) { FakeThingsController.new }

  subject { controller }

  it { should respond_to(:get_model_class)             }
  it { should respond_to(:get_model_instance_variable) }
  it { should respond_to(:set_model_instance_variable) }

  it 'should return the correct model class' do
    expect(subject.get_model_class).to eq(FakeThing)
  end
end
