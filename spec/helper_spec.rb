require 'spec_helper'

describe MetaMagic::Helper do

  let(:helper) { FakeHelper.new }

  subject { helper }

  it { should respond_to(:object_path)  }
  it { should respond_to(:objects_path) }
end
