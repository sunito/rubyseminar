f = File.open('testdatei')
begin
  # ... process
rescue
  # .. handle errors
else
  puts "keine Exception aufgetreten!"
ensure
  f.close unless f.nil?
end
