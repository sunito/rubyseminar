catch :outer_loop do
  for i in (1..3) do 
    catch :inner_loop do
      for j in (1..3) do 
        puts "#{i},#{j}" 
        throw :outer_loop if i==2 and j==2
      end
    end
  end
end
