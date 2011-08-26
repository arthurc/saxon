require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'saxon')

class SOAP
  include Saxon::Base
  
  namespaces "soap" => "http://www.w3.org/2003/05/soap-envelope"
  
  on "soap:Header"
  
  on "soap:Body"
end
