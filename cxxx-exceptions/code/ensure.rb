f = File.open('testdatei')
begin
  # ... process
rescue
  # .. handle errors
ensure
  f.close unless f.nil?
end
