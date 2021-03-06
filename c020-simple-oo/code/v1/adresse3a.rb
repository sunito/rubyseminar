
class Adresse
  attr_accessor :name, :strasse_nr, :plz, :ort

  def initialize(zeile_oder_adresse)
    case zeile_oder_adresse
    when String
      zeile = zeile_oder_adresse
      name, str, plz_ort = zeile.split(",").map{|x| x.strip}
      @name = name
      @strasse_nr = str
      @plz,  @ort = plz_ort.split(" ", 2)
    when Adresse
      adr = zeile_oder_adresse
      @name = adr.name
      @strasse_nr = adr.strasse_nr
      @plz = adr.plz
      @ort = adr.ort
    else
      raise "Kann Adresse nicht mit #{zeile_oder_adresse} initialisieren"
    end
  end

  def ausgabe
    <<Textklammer
#{name}
#{strasse_nr}
#{plz} #{ort}
Textklammer
  end
end


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
