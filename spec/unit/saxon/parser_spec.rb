require "saxon/parser"

describe Saxon::Parser do
  subject { Saxon::Parser.new(@state_machine) }
  
  before(:each) do
    @state_machine = double()
  end
  
  describe "#add_on" do
    it do
      @state_machine.should_receive(:create_state).with("a")
      add_on
    end
    
    def add_on
      subject.add_on(["a"], {}, proc {})
    end
  end
end
