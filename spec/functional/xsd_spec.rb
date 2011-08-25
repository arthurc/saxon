require File.expand_path(File.join(File.dirname(__FILE__), 'xsd'))

describe XSD do
  it { subject.states.count.should == 3 }
end
