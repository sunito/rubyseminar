# kuchenbacken.rb

def einkaufen
  threads = []
  zutaten = %w{ Mehl Eier Milch Kakao }
  zutaten.each { |zutat|
    threads << Thread.new(zutat) do |z|
      puts "kaufe #{z}"
      sleep 10+rand(15)
      puts "#{z} eingekauft"
    end
  }
  threads.each {|t| t.join}
end

einkaufen
puts "alles eingekauft, Backen kann beginnen"
