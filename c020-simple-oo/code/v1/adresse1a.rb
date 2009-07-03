
class Adresse
  attr_accessor :name, :strasse_nr, :plz, :ort
  def ausgabe
    <<Textklammer
#{name}
#{strasse_nr}
#{plz} #{ort}"
Textklammer
  end
end

adr = Adresse.new

adr.name = "Heinz"
adr.strasse_nr = "Waldstr. 7"
adr.plz = 17268
adr.ort = "Ringenwalde"


puts adr.ausgabe