# To change this template, choose Tools | Templates
# and open the template in the editor.

class NewProbier
  attr_reader :wert
  
  def NewProbier.new(zahl)
    frisches_object = super()
    frisches_object.instance_variable_set(:@wert, zahl)
    frisches_object
  end

end


np = NewProbier.new(17)
puts np.wert

