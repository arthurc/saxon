require File.expand_path(File.join(File.dirname(__FILE__), 'soap'))

describe SOAP do
  it { SOAP.state_machine.states.count.should == 2 }
end
