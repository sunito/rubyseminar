def dividieren
  -3.upto(3) do |i|
    begin
      puts "5 / #{i} = #{5/i}"
    rescue ZeroDivisionError => text
      puts "Fehler: #{text} aufgetreten"
      puts "kann ich nicht ausrechnen"
      retry
    end
  end
end

dividieren
  
