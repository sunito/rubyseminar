# To change this template, choose Tools | Templates
# and open the template in the editor.

class Auto
  def initialize(fahrer)
    @speed = 0
    @gaspedal = 0
    self.gaspedal = if fahrer.crazy?
      1
    else
      0
    end
    @bremse = :nicht_getreten
  end

  def gaspedal= wert
    @gaspedal = 1 if wert == :getreten
    @speed += @gaspedal
  end

  def bremse= wert
    @bremse = wert
    @speed = 0 if @bremse == :getreten
  end

  def faehrt?
    @speed > 0
  end
end
