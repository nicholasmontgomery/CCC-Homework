require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms')

class TestRooms < Minitest::Test

  def setup
      @room1 = Rooms.new(1, 10)
      @room2 = Rooms.new(2, 5)
      @room3 = Rooms.new(3, 20)
  end

  def test_room_has_name
    assert_equal(1, @room1.room_number)
  end

  def test_room_capacity
    assert_equal(5, @room2.room_capacity)
  end

  def test_room_has_no_guests
    assert_equal([], @room3.guests)
  end

  def test_room_has_no_songs_on_playlist
    assert_equal([], @room3.song_playlist)
  end
end
