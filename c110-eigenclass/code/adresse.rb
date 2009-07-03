class Object
  def wo_bin_ich(orts_beschreibung)
    #puts "in #{orts_beschreibung} self=#{self} class=#{self.class}"
  end
end

class Adresse
  attr_accessor :plz, :ort
  wo_bin_ich "Klasse Adresse"

  def zeile
    wo_bin_ich "Methode zeile"
    "#{@plz} #@ort"
  end

  def to_s
    "<Adresse (#{zeile})>"
  end
end

__END__

wo_bin_ich "Toplevel"

adr = Adresse.new
adr.plz = "17268"
adr.ort = "Templin"
puts "alt: " + adr.zeile
puts adr

def adr.zeile
  "Haha, überschieben!"
end

puts "neu: " + adr.zeile

adr2 = Adresse.new
adr2.plz = "10000"
puts "adr2: " + adr2.zeile

