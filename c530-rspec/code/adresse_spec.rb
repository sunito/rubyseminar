# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'adresse'

describe Adresse do
  before(:each) do
    @adr = Adresse.new
  end

  it "sollte funktionieren" do
    @adr.zeile == "33"
  end
end

