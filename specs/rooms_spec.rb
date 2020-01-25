require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms')
require_relative('../guests')

class TestRooms < Minitest::Test

  def setup
      @room1 = Rooms.new(1, 10)
      @room2 = Rooms.new(2, 5)
      @room3 = Rooms.new(3, 20)

      @guest1 = Guest.new("Nick", 150, "Heroes")
      @guest2 = Guest.new("Barry", 80, "Billy Jean")
      @guest3 = Guest.new("Sarah", 100, "Bohemian Rhapsody")

      @guest = [@guest1, @guest2, @guest3]
  end

  def test_room_has_name
    assert_equal(1, @room1.room_number)
  end

  def test_room_capacity
    assert_equal(5, @room2.room_capacity)
  end

  def test_room_has_no_guests
    assert_equal([], @room3.room_guests)
  end

  def test_room_has_no_songs_on_playlist
  #   assert_equal([], @room3.song_playlist)
  end

  def test_can_check_in_guest
    @room3.check_in_guest(@guest1)
    assert_equal(1, @room3.guest_count)
  end

  def test_can_check_out_guest
    @room3.check_in_guest(@guest1)
    @room3.check_out_guest(@guest1)
    assert_equal(0, @room3.guest_count)
  end

end
