class Rooms

  attr_reader :room_number, :room_capacity, :room_guests, :song_playlist

    def initialize(room_number, room_capacity)
      @room_number = room_number
      @room_capacity = room_capacity
      @room_guests = []
      @song_playlist = []
      @room_price = 5
    end

    def guest_count
       return @room_guests.count
    end

    def song_count
       return @song_playlist.count
    end

    def check_in_guest(guest)
      return if @room_guests.count >= @room_capacity
      return if @room_price > guest.wallet
      @room_guests.push(guest)
      guest.take_money_from_wallet(@room_price)
      for song in @song_playlist
      return "Whoo!" if song.name == guest.fav_song
      end
    end

    def check_out_guest(guest)
      @room_guests.delete(guest)
    end

    def add_song_to_room(song)
      @song_playlist.push(song)
    end

    def remove_song_from_room(song)
      @song_playlist.delete(song)
    end


end
