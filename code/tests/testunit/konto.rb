class Konto
  attr_reader :saldo
  
  def initialize(saldo=0)
    @saldo = saldo
  end   
      
  def einzahlen(betrag)
    @saldo = @saldo + betrag
  end   
end
