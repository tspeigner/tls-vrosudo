require 'spec_helper'
describe 'sudoer' do
  context 'with default values for all parameters' do
    it { should contain_class('sudoer') }
  end
end
