#raise
#--
#name=nil
#raise 'Missing name' if name.nil?
#--
=begin
names=%w{ Albert, Berta, Charlotte}
i = 5
if i >= names.size
  raise IndexError, "#{i} >= size (#{names.size})"
end
=end
#--
# raise ArgumentError, "Name too big", caller
#--
class MeineException < RuntimeError
end

raise MeineException.new, "dies ist der Text"

