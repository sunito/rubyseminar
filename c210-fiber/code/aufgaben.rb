einmaleins = Fiber.new do  
  for x in 1..10 do
    for y in 1..10 do
      frage = "#{x} x #{y} = "
      Fiber.yield frage,x*y
    end
  end
end
  
20.times { 
  f,a = einmaleins.resume  
  print f
  answer = gets
  if answer.to_i == a
    puts "OK"
  else
    puts "falsch"
  end
}

