require 'spec_helper'

describe MetaMagic::Controller do

  let(:controller) { FakeThingsController.new }

  subject { controller }

  it { should respond_to(:get_model_class)             }
  it { should respond_to(:get_model_instance_variable) }
  it { should respond_to(:set_model_instance_variable) }

  describe '.get_model_class' do
    context 'when the controller has an associated model' do
      it 'should return the correct model class' do
        expect(subject.get_model_class).to eq(FakeThing)
      end
    end

    context 'when the associated class doesn\'t exist' do
      let(:controller) { NoModelController.new }
      it 'should return nil' do
        expect(subject.get_model_class).to be_nil
      end
    end
  end

  describe '.get_model_class!' do
    context 'when the controller has an associated model' do
      it 'should return the correct model class' do
        expect(subject.get_model_class!).to eq(FakeThing)
      end
    end

    context 'when the associated class doesn\'t exist' do
      let(:controller) { NoModelController.new }
      it 'should throw an exception' do
        expect { subject.get_model_class! }.to raise_error(NameError)
      end
    end
  end
end

