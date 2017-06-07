require 'spec_helper'

describe "Instrumentald setup" do
  describe package('instrumentald') do
    it { should be_installed }
  end

  describe file('/etc/instrumentald.toml') do
    it { sould be_file }
  end
end
