module Saxon
  class Parser
    attr_reader :state_machine
    
    def initialize(state_machine)
      @state_machine = state_machine
    end
    
    def add_on(path, options, block)
      @state_machine.create_state(path.first)
    end
    
    def add_namespaces(namespaces)
    end
  end
end
