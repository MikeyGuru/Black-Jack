# encoding: utf-8
# heart "\u2661"
# club "\u2667"
# spade "\u2664"
# diamond "\u2662"

puts "Please enter your name"
$name = gets.chomp

 class Blackjack
#
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
end
  def start
    welcome
  end
  def welcome

    puts "\u2661  " + "\u2667  " + "\u2664  " + "\u2662  " + "  Welcome to Guru's Blackjack 1.0   " + "\u2662  " + "\u2664  " + "\u2667  " + "\u2661  "
    puts $name + ", would you like to know how to play?\n" + "Enter Yes for instructions\nor \nEnter No to start playing\nThen press ENTER"
    help = gets.chomp.downcase
      if help == "yes"
        puts "Black Jack Info and Rules"
      elsif help == "no"
        puts "Let's PLAY Blackjack\n" + "\u2661  " + "\u2667  " + "\u2664  " + "\u2662  \n" + "\u2661  " + "\u2667  " + "\u2664  " + "\u2662  "
      else
        puts 'INVALID RESPONSE PLEASE ENTER "YES" OR "NO"' + "\n" + "\n"
        start
      end
    end

    def card_value
      oneone =[]
      oneone = @one.shuffle
      @oneone = "You received a #{oneone[0]}!"
      oneone = 1
      twotwo =[]
      twotwo = @two.shuffle
      @twotwo = "You received a #{twotwo[0]}!"
      twotwo = 2
      threethree =[]
      threethree = @three.shuffle
      @threethree = "You received a #{threethree[0]}!"
      threethree = 3
      fourfour =[]
      fourfour = @four.shuffle
      @fourfour = "You received a #{fourfour[0]}!"
      fourfour = 4
      fivefive =[]
      fivefive = @five.shuffle
      @fivefive = "You received a #{fivefive[0]}!"
      fivefive = 5
      sixsix =[]
      sixsix = @six.shuffle
      @sixsix = "You received a #{sixsix[0]}!"
      sixsix = 6
      sevenseven =[]
      sevenseven = @seven.shuffle
      @sevenseven = "You received a #{sevenseven[0]}!"
      sevenseven = 7
      eighteight =[]
      eighteight = @eight.shuffle
      @eighteight = "You received a #{eighteight[0]}!"
      eighteight = 8
      ninenine =[]
      ninenine = @nine.shuffle
      @ninenine = "You received a #{ninenine[0]}!"
      ninenine = 9
      tenten =[]
      tenten = @ten.shuffle
      @tenten = "You received a #{tenten[0]}!"
      tenten = 10
    end

    def ace
      puts"You got an ACE. Would you like it to be 1 or 11?"
      @ace_value = gets.chomp.to_i
      until @ace_value == 11 || @ace_value == 1
      if @ace_value == 11
        hand << 11
      elsif @ace_value == 1
        hand << 1
      else
        puts " Enter a valid number"
      end
      return @acevalue
    end
  end

  def draw_card

       card_worth = deal.to_i

      if card_worth == 1
        puts @oneone
        ace


      end
      if card_worth == 2
        puts @twotwo
        hand << 2
      end
      if card_worth == 3
        puts  @threethree
        hand << 3
      end
      if card_worth == 4
         puts  @fourfour
         hand << 4
       end
      if card_worth == 5
        puts  @fivefive
        hand << 5
      end
      if card_worth == 6
        puts  @sixsix
        hand << 6
      end
      if card_worth == 7
        puts  @sevenseven
        hand << 7
      end
      if card_worth == 8
        puts  @eighteight
        hand << 8
      end
      if card_worth == 9
        puts  @ninenine
        hand << 9
      end
      if card_worth == 10
        puts  @tenten
        hand << 10
      end
    end
