  # class Blackjack
  #   def run
  #     fail "You need to add some functionality here before you can use this."
  #   end
  # end


  class Deck
     def initialize
      @one = ["Ace of Clubs", "Ace of Spades", "Ace of Hearts", "Ace of Diamonds"]
      @two = ["2 of Clubs", "2 of Spades", "2 of Hearts", "2 of Diamonds"]
      @three = ["3 of Clubs", "3 of Spades", "3 of Hearts", "3 of Diamonds"]
      @four = ["4 of Clubs", "4 of Spades", "4 of Hearts", "4 of Diamonds"]
      @five = ["5 of Clubs", "5 of Spades", "5 of Hearts", "5 of Diamonds"]
      @six = ["6 of Clubs", "6 of Spades", "6 of Hearts", "6 of Diamonds"]
      @seven = ["7 of Clubs", "7 of Spades", "7 of Hearts", "7 of Diamonds"]
      @eight = ["8 of Clubs", "8 of Spades", "8 of Hearts", "8 of Diamonds"]
      @nine = ["9 of Clubs", "9 of Spades", "9 of Hearts", "9 of Diamonds"]
      @ten = ["10 of Clubs", "10 of Spades", "10 of Hearts", "10 of Diamonds" ,
         "Jack of Clubs", "Jack of Spades", "Jack of Hearts", "Jack of Diamonds" ,
          "Queen of Clubs", "Queen of Spades", "Queen of Hearts", "Queen of Diamonds" ,
           "King of Clubs", "King of Spades", "King of Hearts", "King of Diamonds"]
      @ace = ["Ace of Clubs", "Ace of Spades", "Ace of Hearts", "Ace of Diamonds"]
    end
    def card_value
      oneone =[]
      oneone = @one.shuffle
      @oneone = "You received a #{oneone[0]}!"
      twotwo =[]
      twotwo = @two.shuffle
      @twotwo = "You received a #{twotwo[0]}!"
      threethree =[]
      threethree = @three.shuffle
      @threethree = "You received a #{threethree[0]}!"
      fourfour =[]
      fourfour = @four.shuffle
      @fourfour = "You received a #{fourfour[0]}!"
      fivefive =[]
      fivefive = @five.shuffle
      @fivefive = "You received a #{fivefive[0]}!"
      sixsix =[]
      sixsix = @six.shuffle
      @sixsix = "You received a #{sixsix[0]}!"
      sevenseven =[]
      sevenseven = @seven.shuffle
      @sevenseven = "You received a #{sevenseven[0]}!"
      eighteight =[]
      eighteight = @eight.shuffle
      @eighteight = "You received a #{eighteight[0]}!"
      ninenine =[]
      ninenine = @nine.shuffle
      @ninenine = "You received a #{ninenine[0]}!"
      tenten =[]
      tenten = @ten.shuffle
      @tenten = "You received a #{tenten[0]}!"
      aceace =[]
      aceace = @ace.shuffle
      @aceace = "You received a #{aceace[0]}!"

    end

    def draw_card
         card = rand(1..11)
         card_worth = card.to_s

        if card_worth == "1"
          puts @oneone
        end
        if card_worth == "2"
          puts @twotwo
        end
        if card_worth == "3"
          puts  @threethree
        end
        if card_worth == "4"
           puts  @fourfour
         end
        if card_worth == "5"
          puts  @fivefive
        end
        if card_worth == "6"
          puts  @sixsix
        end
        if card_worth == "7"
          puts  @sevenseven
        end
        if card_worth == "8"
          puts  @eighteight
        end
        if card_worth == "9"
          puts  @ninenine
        end
        if card_worth == "10"
          puts  @tenten
        end
        if card_worth == "11"
          puts @aceace
      end
    end
end








  # class Game

  #
  #
  #
  #
  # # end
  # #
  # # class Game
  # # def initialize
  # # end
  # # def
  # # end
  # #
  # #
  # # class Betting
  # # def initialize
  # # end
  # # end
  #
  play = Deck.new
  play.card_value
  play.draw_card
