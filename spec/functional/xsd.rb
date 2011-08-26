require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'saxon')

class XSD
  include Saxon::Base
  
  namespaces :default => "http://www.w3.org/2001/XMLSchema"
  
  on "element", :delegate => "Element"
  on "complexType", :delegate => "ComplexType"
  on "simpleType", :delegate => "SimpleType"
  
  class Element
    include Saxon::Base
    
    on "complexType", :delegate => "ComplexType"
    on "simpleType", :delegate => "SimpleType"
  end
  
  class ComplexType
    include Saxon::Base
    
    on "sequence" do
      on "element", :delegate => "Element"
      on "attribute"
    end
  end
  
  class SimpleType
    include Saxon::Base
    
    on "restriction" do
      on "enumeration"
    end
  end
end
