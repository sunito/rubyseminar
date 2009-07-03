offset = 3

class Array
  def auswahl_schreiben
    each do |wert|
      erfolg = yield wert      
      puts "In der Auswahl ist #{wert}" if erfolg
    end
  end
end

summe = 0

[1,2,3].auswahl_schreiben do |zahl|
  summe += zahl
  (zahl + offset).odd?
end
puts summe
%w(eins zwei drei vier fünf sechs).auswahl_schreiben do |wort|
  wort =~ /r/
end
