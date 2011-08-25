gem "aasm"
require "aasm"

require 'saxon/state_machine_adapters/abstract_state_machine'

module Saxon
  def self.aasm_state_machine(config)
    StateMachineAdapters::AasmAdapter.new
  end
  
  module StateMachineAdapters
    class AasmAdapter < AbstractStateMachine
      include AASM
    end
  end
end
