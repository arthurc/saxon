module Saxon
  module DSL
    def self.included(base)
      base.extend(ClassMethods)
    end
  
    module ClassMethods
      def inherited(klass)
        super
        klass.parser = parser
      end
      
      def namespaces(namespaces)
        parser.add_namespaces(namespaces)
      end
      
      def on(path, options = {}, &block)
        parser.add_on(path.split(/\//), options, block)
      end
      
      def state_machine
        parser.state_machine
      end
      
      private
      
      def parser
        @parser ||= Parser.new(Saxon.create_state_machine(:default))
      end
      
      def parser=(parser)
        @parser = parser ? parser.dup : nil
      end
    end
  end
end
