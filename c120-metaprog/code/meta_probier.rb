
class MetaProbier
  def initialize    
  end

#  define_method :fahren do
#    puts "Brumm Brumm"
#  end

  def method_missing(name_der_methode, *parameter_liste, &codeblock)
    puts "undefinierte Methode gefunden: #{name_der_methode}"
    puts "Parameter waren: #{parameter_liste.inspect}"
    puts "Es war #{codeblock ? '' : 'k'}ein Code-Block vorhanden."
    codeblock = proc { "kein Block angegeben"} unless codeblock
    puts "Das Ergebnis des Blockes ist: #{codeblock.call}"
  end
end

mp = MetaProbier.new

speed = "schnell"

MetaProbier.send(:define_method, :fahren) do
  puts "fahre #{speed}"
end

speed = "langsam"


mp.instance_eval do
  fahren
end

funktion = proc { |x| x*x }

erg = funktion[1024]
puts erg

def anf_meth(x)
  x*x
end

lange_schleife(:anf_meth, lambda { |x| x*2 }) do
  
end

#mp.fahren

