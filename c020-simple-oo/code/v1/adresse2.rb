
class Adresse
  attr_accessor :name
  def ausgabe
    "Adresse von: #{name}"
  end
end

adr = Adresse.new

adr.name = "Heinz"

puts adr.ausgabe