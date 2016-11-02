require 'spec_helper'
describe 'vrosudo' do
  context 'with default values for all parameters' do
    it { should contain_class('vrosudo') }
  end
end
