
require File.dirname(__FILE__) + '/adresse3'

class Person < Adresse
  attr_accessor :telefon

  def initialize(adress_zeile, telefon)
    super adress_zeile
    @telefon = telefon
  end

  def ausgabe
    super +
    "Tel: " + telefon
  end
end

heinz = Person.new "Heinz Müller, Waldstr. 7, 17268 Ringenwalde", "039881-49194"

#adr   = Adresse.new "Heinz Müller, Waldstr. 7, 17268 Ringenwalde"
#heinz = Person.new(adr, "039881-49194")

puts heinz.ausgabe

__END__

< Struct.new(:name, :strasse_nr, :plz, :ort)

def initialize(name, str, plz, ort)
    @name = name
    @strasse_nr = str
    @plz = plz
    @ort = ort
  end


adr.name = "Heinz"
adr.strasse_nr = "Waldstr. 7"
adr.plz = 17268
adr.ort = "Ringenwalde"
