# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'auto'

describe Auto do
  before(:each) do
    fahrer = mock("Der Fahrer")
    fahrer.should_receive(:crazy?).and_return(true)
    @auto = Auto.new(fahrer)
  end

  it "sollte bei getretenem Gaspedal fahren" do
    @auto.gaspedal = :getreten
    @auto.faehrt?.should be_true
  end

  it "sollte bei getretener Bremse nicht fahren" do
    @auto.gaspedal = :getreten
    @auto.bremse = :getreten
    @auto.faehrt?.should be_false
  end


end

