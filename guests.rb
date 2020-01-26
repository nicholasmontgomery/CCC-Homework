class Guest

  attr_reader :name, :wallet, :fav_song, :drinks_bought
  attr_writer :drinks_bought

    def initialize(name, wallet, fav_song)
      @name = name
      @wallet = wallet
      @fav_song = fav_song
      @drinks_bought = []
    end

  def take_money_from_wallet(amount)
    @wallet -= amount
  end

  def buy_drink(drink)
    return if @wallet < drink.price
    @drinks_bought.push(drink)
    @wallet -= drink.price
  end

end
