require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests')

class TestGuest < Minitest::Test

  def setup
      @Nick = Guest.new("Nick", 150, "Heroes")
      @Phil = Guest.new("Jupiter", 80, "Billy Jean")
      @Sarah = Guest.new("Mars", 100, "Bohemian Rhapsody")
  end

  def test_has_name
    assert_equal("Nick", @Nick.name)
  end

  def test_has_money_in_wallet
    assert_equal(80, @Phil.wallet)
  end

  def test_has_fav_song
    assert_equal("Adele", @Sarah.fav_artist)
  end

end
