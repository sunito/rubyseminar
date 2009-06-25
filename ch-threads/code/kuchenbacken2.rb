# kuchenbacken.rb

def einkaufen
  threads = []
  zutaten = %w{ Mehl Eier Milch Kakao }
  zutaten.each { |zutat|
    threads << Thread.new(zutat) do |z|
      puts "thread #{z} gestartet"
      Thread.stop
      puts "kaufe #{z}"
      sleep 10+rand(15)
      puts "#{z} eingekauft"
    end
  }
  puts "alle Threads gestartet, warte 5 sec"
  sleep 5
  threads.each {|t| t.run}

  threads.each {|t| t.join}
end

einkaufen
puts "alles eingekauft, Backen kann beginnen"
