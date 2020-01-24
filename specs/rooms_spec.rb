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

  # def test_room_has_no_guests
  #   assert_equal([], @room3.room_guests)
  # end
  #
  # def test_room_has_no_songs_on_playlist
  # #   assert_equal([], @room3.song_playlist)
  # end

  def test_can_add_guest
    @room3.add_guest(@guest1)
    assert_equal(1, @room3.guest_count)
  end

  # def test_can_add_drinks
  #   @pub.add_drink(@drink1)
  #   assert_equal(1, @room3.guest_count)
  # end

  # def test_check_in_guest
  #   assert_equal(1, @room1.check_in_guest(@guest1))
  # end
  #
  # @pub.add_drink(@drink1)
  # assert_equal(1, @pub.drink_count)

  # def test_check_out_guest
  #   @room2.check_in_guest(@guest1)
  #   @room2.check_in_guest(@guest2)
  #   @room2.check_in_guest(@guest3)
  #   assert_equal(["Nick, Sarah"], @room2.check_out_guest(@guest2)

  end
