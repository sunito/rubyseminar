programm = IO.popen("cat", "w+")
programm.puts "Programm-Input"
programm.close_write
puts programm.gets
