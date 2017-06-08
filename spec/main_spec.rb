require 'spec_helper'

describe "Instrumentald setup" do
  describe package('instrumentald') do
    it { should be_installed }
  end

  describe file('/etc/instrumentald.toml') do
    it { sould be_file }

    its(:content) { should include("project_token = \"#{ANSIBLE_VARS.fetch('instrumental_token', 'FAIL')}\"") }
    its(:content) { should include('system = ["cpu", "disk", "load", "memory", "network", "swap"]') }
    its(:content) { should include('docker = []') }
  end
end
