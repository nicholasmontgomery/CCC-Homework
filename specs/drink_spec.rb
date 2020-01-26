require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')

class TestDrink < Minitest::Test

    def setup
      @wine = Drink.new("Wine", 5)
      @beer = Drink.new("Beer", 4)
    end

  def test_drink_has_name
    assert_equal("Wine", @wine.name)
  end

  def test_drink_has_price
    assert_equal(4, @beer.price)
  end

end
