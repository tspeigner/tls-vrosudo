require 'spec_helper'
describe 'capstone' do
  context 'with default values for all parameters' do
    it { should contain_class('capstone') }
  end
end
