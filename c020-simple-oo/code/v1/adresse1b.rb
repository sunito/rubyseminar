
class Adresse
  attr_accessor :name, :strasse_nr, :plz, :ort

  def initialize(zeile)
    name, str, plz_ort = zeile.split(",").map{|x| x.strip}
    @name = name
    @strasse_nr = str
    @plz,  @ort = plz_ort.split(" ", 1)
  end

  def ausgabe
    <<Textklammer
#{name}
#{strasse_nr}
#{plz} #{ort}
Textklammer
  end
end

adr = Adresse.new("Heinz Müller, Waldstr. 7, 17268 Ringenwalde")


puts adr.ausgabe

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
