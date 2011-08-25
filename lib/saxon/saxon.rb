module Saxon
  @@configurations = {
    "default" => {
      :adapter => :aasm
    }
  }
  
  def self.configurations; @@configurations; end
  
  def self.create_state_machine(spec)
    case spec
    when String, Symbol
      create_state_machine(configurations[spec.to_s])
    else
      require "saxon/state_machine_adapters/#{spec[:adapter]}_adapter"
      send("#{spec[:adapter]}_state_machine", spec)
    end
  end
end
