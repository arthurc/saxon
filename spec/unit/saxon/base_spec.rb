require "saxon"

class Foo
  include Saxon::Base
  
  namespaces :default => "anything", "e" => "everything"
  
  on "a/e:b"
end

describe Saxon::Base do
  subject { Foo }
  
  it { subject.state_machine.states.count.should == 3 }
end
