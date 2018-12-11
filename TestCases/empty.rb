#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

  puts "Java Version = " + System.get_property('java.version')

end
