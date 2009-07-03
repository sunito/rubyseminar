
class Adresse
  attr_accessor :plz, :ort
  @@zuletzt_aufgerufen = nil
  HOME = " sdkljhl"

  def self.zuletzt
    @@zuletzt_aufgerufen
  end


  def zeile
    @@zuletzt_aufgerufen = self
    "#{@plz} #@ort"
  end

  def to_s
    "<Adresse (#{zeile})>"
  end
end

__END__
adr = Adresse.new
adr.plz = "17268"
adr.ort = "Templin"

puts "zuletzt: #{Adresse.zuletzt}"
puts "zeile: " + adr.zeile
puts "zuletzt: #{Adresse.zuletzt}"

__END__


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

