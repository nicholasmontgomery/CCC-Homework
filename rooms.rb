class Rooms

  attr_reader :room_number, :room_capacity, :room_guests, :song_playlist

    def initialize(room_number, room_capacity)
      @room_number = room_number
      @room_capacity = room_capacity
      @room_guests = []
      @song_playlist = []
    end

    def guest_count
       return @room_guests.count
    end

    def check_in_guest(guest)
      @room_guests.push(guest)
    end

    def check_out_guest(guest)
      @room_guests.delete(guest)
    end

end
