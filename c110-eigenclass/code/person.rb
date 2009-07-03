# To change this template, choose Tools | Templates
# and open the template in the editor.
$LOAD_PATH << File.dirname(__FILE__)

require 'adresse'
require 'rubygems'
require 'vpim'
require "was_ich_immer_brauche"

class Object
  def eigenclass
    class << self
      self
    end
  end
end

class Person
  attr_accessor :adr, :dienst_adr
  include WasIchImmerBrauche
  include Enumerable

  def initialize(adr)
    @adr = adr
  end

  def each
    yield adr if adr
    yield dienst_adr if dienst_adr
  end

  def map_alt
    erg = []
    each {|adr| erg << (yield adr) }
    erg
  end
d
  def zeige_alle_zeilen
    each do |adr|
      puts adr.zeile
    end
  end

  def * zahl
    zahl.times {zeige_alle_zeilen}
  end
end

adr = Adresse.new
adr.plz = "32000"
adr.ort = "Hannover"
pers = Person.new(adr)
pers.dienst_adr = adr

pers.each do |adr|
  puts adr.zeile
end

alle_plz = pers.map do |adr|
  adr.plz
end

p alle_plz

__END__

puts "ssc: #{pers.supersuperclass.inspect}"

datei = File.open("/home/sound/Starters/std.vcf")
vcards = Vpim::Vcard.decode(datei)

templiner = vcards.select do |vc|
  vc.address.locality =~ /Templin/ if vc.address
end

templiner_loc = templiner.map {|vc| vc.address.locality}
puts "templiner_loc= #{templiner_loc.join(', ')}"

puts templiner.size
t1 = templiner[0]       #templiner.first

adr_vpim = t1.address
x=nil
def x.dopp
  puts "Schluss jetzt!"
end



s2 = ":sd333"
s2.extend WasIchImmerBrauche
puts [s2.doppelt, s2.supersuperclass]
__END__


pers.dienst_adr = adr_vpim

def adr_vpim.zeile
  postalcode
end

puts "----pers.doppelt-----"
puts pers.doppelt



class << adr_vpim
  attr_reader :plz
  def zeile
    postalcode
  end
end


#pers.adr = "Tokio"

pers.zeige_alle_zeilen

pers.map {|adr|
  adr.zeile
}

__END__

class Vpim::Vcard::Address
  def zeile
    postalcode
  end
end
