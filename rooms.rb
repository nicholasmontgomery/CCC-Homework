class Rooms

  attr_reader :room_number, :room_capacity, :guests, :song_playlist

    def initialize(room_number, room_capacity)
      @room_number = room_number
      @room_capacity = room_capacity
      @guests = []
      @song_playlist = []
    end

  end
