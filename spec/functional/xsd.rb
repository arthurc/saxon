require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'saxon')

class XSD
  include Saxon::DSL
  
  namespaces :default => "http://www.w3.org/2001/XMLSchema"
  
  on "element", :delegate => "Element"
  on "complexType", :delegate => "ComplexType"
  on "simpleType", :delegate => "SimpleType"
  
  class Element
    include Saxon::DSL
    
    on "complexType", :delegate => "ComplexType"
    on "simpleType", :delegate => "SimpleType"
  end
  
  class ComplexType
    include Saxon::DSL
    
    on "sequence" do
      on "element", :delegate => "Element"
    end
  end
  
  class SimpleType
    include Saxon::DSL
    
    on "restriction" do
      on "enumeration"
    end
  end
end
