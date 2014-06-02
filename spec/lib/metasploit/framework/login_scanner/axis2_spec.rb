
require 'spec_helper'
require 'metasploit/framework/login_scanner/winrm'

describe Metasploit::Framework::LoginScanner::WinRM do

  it_behaves_like 'Metasploit::Framework::LoginScanner::Base'
  it_behaves_like 'Metasploit::Framework::LoginScanner::RexSocket'
  it_behaves_like 'Metasploit::Framework::LoginScanner::HTTP'

  context "#method=" do
    subject(:scanner) { described_class.new }

    it "should raise, warning that the :method can't be changed" do
      expect { scanner.method = "GET" }.to raise_error(RuntimeError)
      expect(scanner.method).to eq("POST")
    end
  end

end

