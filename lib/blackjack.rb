# encoding: utf-8
# heart "\u2661"
# club "\u2667"
# spade "\u2664"
# diamond "\u2662"
class Player
  attr_accessor :name

  def ask_name
    puts "Please enter your name"
    @name = gets.chomp
  end
end

first_player = Player.new
first_player.ask_name
first_player.name

class Blackjack
  attr_accessor :player_name
  def start
    welcome
  end
  def slowly
    yield.each_char { |c| putc c; $stdout.flush; sleep 0.03 }
  end
  def pretty
    pretty_limit = 2
    prettys = 0
    loop do
      slowly do
        "\u2661  \u2667  \u2664  \u2667  \u2661  \u2667  \u2664  "
      end
      break if prettys > pretty_limit
      prettys += 1
    end
  end
  def welcome
    pretty
    puts "\n\n\nWelcome to Guru's Blackjack 1.0 \n"
    puts @player_name + ", would you like to know how to play?\nEnter YES for HELP\nor \nEnter NO to START\nThen press ENTER"
    help = gets.chomp.downcase
    if help == "yes"
      pretty
      puts "Blackjack, also known as twenty-one, is the most widely played casino banking game in the world.
      Blackjack is a comparing card game between a player and dealer, meaning that players compete against
      the dealer but not against any other players. It is played with one or more decks of 52 cards. The object
      of the game is to beat the dealer, which can be done in a number of ways:

      Get 21 points on the player's first two cards (called a blackjack), without a dealer blackjack;
      Reach a final score higher than the dealer without exceeding 21; or
      Let the dealer draw additional cards until his or her hand exceeds 21.
      The player or players are dealt an initial two-card hand and add together the value of their cards.
      Face cards (kings, queens, and jacks) are counted as ten points. A player and the dealer can count his
      or her own ace as 1 point or 11 points. All other cards are counted as the numeric value shown on the card.
      After receiving their initial two cards, players have the option of getting a hit, or taking an additional card.
      In a given round, the player or the dealer wins by having a score of 21 or by having the highest score that is less than 21.
      Scoring higher than 21 results in a loss. A player may win by having any final score equal to or less than 21 if the dealer busts.
      If a player holds an ace valued as 11, the hand is called soft, meaning that the player cannot go bust by taking an additional card;
      11 plus the value of any other card will always be less than or equal to 21. Otherwise, the hand is hard.
      \nBlackjack. Wikipedia. Wikimedia Foundation, 21 Sept. 2014. Web. 21 Sept. 2014.
      \n \n\n OKAY LETS PLAY #{@player_name}"
      pretty
      puts "\n \n\n OKAY LETS PLAY #{@player_name}"
    elsif help == "no"
      pretty
      puts "\nLet's PLAY Blackjack\n"
    else
      puts 'INVALID RESPONSE PLEASE ENTER "YES" OR "NO"' + "\n" + "\n"
      start
    end
  end
  def game
    accept_hand = true
    hand = []
    total = begin_cards(hand)
    accept_hand = hit(hand)
    if accept_hand == true
      hit(hand)
    end
  end
  def dealer_game
    dealer_hand = []
    dealer_total = dealer_begin(dealer_hand)
  end
  def begin_cards(hand)
    deal(hand)
    deal(hand)
    total(hand)
    if total(hand) == 21
      puts "BLACKJACK"
      p_bj
    end
  end
  def deal(hand)
    card = rand(1..10)
    hand << card
  end

  def total(hand)
    total = 0
    hand.each do |count|
      total += count
    end
    puts "Your total value of cards is #{total}"
    total
    if total > 21
      puts "BUST"
    end
    @player_total = total
  end
  def new_card(hand)
    deal
    if total(hand) > 21
      puts "BUST"
    end
  end
  def hit(hand)
    hit_counter = 3
    hits = 0
    loop do
      break if hits > hit_counter
      puts "Would you like to hit or stand #{@player_name}"
      hit_or_stand = gets.chomp.downcase
      if hit_or_stand == "stand" #&& total(hand) =< 21
        hits += 4
        puts "Dealers Turn \n GOOD LUCK  " + @player_name
        pretty
      end
      if hit_or_stand == "hit"
        hits += 1
        deal(hand)
        total(hand)
        keep_going = true
      end
    end
  end
  def dealer_begin(dealer_hand)
    until dealer_total(dealer_hand) > 16
      deal(dealer_hand)
    end
  end
  def dealer_deal(dealer_hand)
    card = rand(2..11)
    dealer_hand << card
  end
  def dealer_total(dealer_hand)
    dealer_total = 0
    dealer_hand.each do |count|
      dealer_total += count
    end
    puts "\nThe DEALER has total value of #{dealer_total}\n"
    dealer_total
    @dealer_total = dealer_total
  end
  def bank_start
    @p_money = 100
    puts "How much would you like to bet"
    @p_bet = gets.chomp.to_i
    @p_money = 100 - @p_bet
    puts "You have #{@p_money} left"
  end
  def p_win
    p_win = @p_bet
    @p_money = p_win.to_i + @p_bet + @p_money
    puts "You have #{@p_money} left"
  end
  def p_bj
    p_blackjack = @p_bet * 1.5
    @p_money = p_blackjack.to_i + @p_bet + @p_money
    puts "You have #{@p_money} left"
  end
  def p_lose
    puts "You have #{@p_money} left"
  end
  def dealer_wins
    #puts "\nThe dealer has a total value of #{@dealer_total} and #{@player_name} you have a total value of #{@player_total}"
    if @dealer_total.to_i > @player_total.to_i
      puts "\u2661  \u2667  \u2664  \u2662     SORRY   \u2662  \u2664  \u2667  \u2661"
      puts "\u2661  \u2667  \u2664  \u2662   YOU LOSE   \u2662  \u2664  \u2667  \u2661"
      p_lose
    end
  end

  def player_wins
    if @dealer_total.to_i < @player_total.to_i
      puts "WINNER \nWINNER\nCHICKEN DINNER  \nCongrats #{player_name} you Won"
      p_win
      pretty
    end
  end
  def tie
    if @dealer_total.to_i == @player_total.to_i
      puts "\u2661  \u2667  \u2664  \u2662 PUSH  \u2662  \u2664  \u2667  \u2661"
    end
  end
  def player_win
    puts "WINNER \nWINNER\nCHICKEN DINNER  \nCongrats #{player_name} you Won"
    puts "\u2664   THE DEALER BUST    \u2667 "
    p_win
    pretty
  end
  def hand_compare
    pretty
    puts "\nThe dealer has a total value of #{@dealer_total} and #{@player_name} you have a total value of #{@player_total}"
    if @dealer_total.to_i > 21
      player_win
    else
      dealer_wins
      player_wins
      tie
    end
    replay
  end
  def replay
    pretty
    puts "\nWould you like to play again \n YES or NO"
    try_again = gets.chomp.downcase
    if try_again == "yes"
      bank_start
      game
      dealer_game
      hand_compare
    else
      pretty
      puts "\nGOODBYE #{@player_name}"
      exit
    end
  end
end

start = Blackjack.new
start.player_name=(first_player.name)
start.welcome
start.bank_start
start.game
start.dealer_game
start.hand_compare
