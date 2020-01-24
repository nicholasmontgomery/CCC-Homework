require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs')

class TestSongs < Minitest::Test

  def setup
      @Purple_Rain = Song.new("Purple Rain")
      @Like_a_Prayer = Song.new("Like a Prayer")
      @Love_Shack = Song.new("Love Shack")
  end

  def test_song_has_name
    assert_equal("Purple Rain", @Purple_Rain.name)
  end

end
