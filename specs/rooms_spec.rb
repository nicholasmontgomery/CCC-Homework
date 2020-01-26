require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < Minitest::Test

  def setup
      @room1 = Rooms.new(1, 10)
      @room2 = Rooms.new(2, 2)
      @room3 = Rooms.new(3, 20)

      @Purple_Rain = Song.new("Purple Rain")
      @Like_a_Prayer = Song.new("Like a Prayer")
      @Heroes = Song.new("Heroes")

      @guest1 = Guest.new("Nick", 150, "Heroes")
      @guest2 = Guest.new("Barry", 4, "Billy Jean")
      @guest3 = Guest.new("Sarah", 100, "Bohemian Rhapsody")

      @all_guests = [@guest1, @guest2, @guest3]
  end

  def test_room_has_number
    assert_equal(1, @room1.room_number)
  end

  def test_room_capacity
    assert_equal(2, @room2.room_capacity)
  end

  def test_room_has_no_guests
    assert_equal(0, @room3.guest_count)
  end

  def test_room_has_no_songs_on_playlist
    assert_equal(0, @room3.song_count)
  end

  def test_can_check_in_guest
    @room3.check_in_guest(@guest1)
    assert_equal(1, @room3.guest_count)
    assert_equal(145, @guest1.wallet)
  end

  def test_can_check_out_guest
    @room3.check_in_guest(@guest1)
    @room3.check_out_guest(@guest1)
    assert_equal(0, @room3.guest_count)
  end

  def test_can_add_song_to_room
    @room2.add_song_to_room(@Purple_Rain)
    assert_equal(1, @room2.song_count)
  end

  def test_can_remove_song_from_room
    @room2.add_song_to_room(@Purple_Rain)
    @room2.remove_song_from_room(@Purple_Rain)
    assert_equal(0, @room2.song_count)
  end

  def test_guest_refused_capacity_reached
    @room2.check_in_guest(@guest1)
    @room2.check_in_guest(@guest2)
    @room2.check_in_guest(@guest3)
    assert_equal(2, @room2.guest_count)
  end

  def test_guest_does_not_have_enough_money
    @room2.check_in_guest(@guest2)
    assert_equal(0, @room2.guest_count)
  end

  def test_favourite_song_reaction
    @room1.add_song_to_room(@Heroes)
    assert_equal("Whoo!", @room1.check_in_guest(@guest1))
  end

# Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?

end
