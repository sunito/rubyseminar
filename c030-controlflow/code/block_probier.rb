# To change this template, choose Tools | Templates
# and open the template in the editor.

def blocktest
  puts "vorher"
  3.times do |index|
    puts yield index+3
  end
  puts "nachher"
end

blocktest do |wert|
  puts "Wert war: " + wert.to_s
  "Das kommt zurück #{wert*wert}"
end
