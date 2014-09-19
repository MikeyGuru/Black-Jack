# class Blackjack
#   def run
#     fail "You need to add some functionality here before you can use this."
#   end
# end


class Deck
  def initialize
    @cards = [ ]
    suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
    value = [ 2, 3, 4, 5, 6, 7, 8, 9, "ten", "jack" , "queen", "king", "ace" ]
    suits.each do |suits|
      value.each do |value|
        @cards = suits + value.to_s
        puts @cards.map 
        end
      end
  end
end

# end
#
# class Game
# def initialize
# end
# def
# end
#
#
# class Betting
# def initialize
# end
# end

tesgt = Deck.new
