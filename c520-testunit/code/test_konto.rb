require 'test/unit'
require 'konto'
class TestKonto < Test::Unit::TestCase
  def test_objekt
    meinkonto = Konto.new
    assert_kind_of Konto, meinkonto, \
                   "kein Konto-Objekt"
  end

  def test_anfangssaldo
    meinkonto = Konto.new
    assert_equal 0, meinkonto.saldo
    meinkonto = Konto.new(1000)
    assert_equal 1000, meinkonto.saldo
  end
end

