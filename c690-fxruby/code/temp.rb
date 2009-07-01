require "tempfile"
puts "bin in #{Dir.pwd}"
Dir.mktmpdir do |dir|
  Dir.chdir(dir)
  puts "bin in #{Dir.pwd}"
  File.open("Test.txt", "w"){|file| file.write("Test")}
  File.open("Test2.txt", "w"){|file| file.write("Test")}
end
puts "bin in #{Dir.pwd}"
