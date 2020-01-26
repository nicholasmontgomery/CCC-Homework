require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests')
require_relative('../drink')

class TestGuest < Minitest::Test

  def setup
      @Nick = Guest.new("Nick", 150, "Heroes")
      @Phil = Guest.new("Jupiter", 80, "Billy Jean")
      @Sarah = Guest.new("Mars", 100, "Bohemian Rhapsody")

      @wine = Drink.new("Wine", 5)
      @beer = Drink.new("Beer", 4)
  end

  def test_has_name
    assert_equal("Nick", @Nick.name)
  end

  def test_has_money_in_wallet
    assert_equal(80, @Phil.wallet)
  end

  def test_has_fav_song
    assert_equal("Bohemian Rhapsody", @Sarah.fav_song)
  end

  def test_take_money_from_wallet
    assert_equal(100, @Nick.take_money_from_wallet(50))
  end

  def test_buy_drink
    @Sarah.buy_drink(@wine)
    assert_equal(95, @Sarah.wallet)
    assert_equal([@wine], @Sarah.drinks_bought)
  end
end
