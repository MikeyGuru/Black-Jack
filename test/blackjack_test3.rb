  # encoding: utf-8
  # heart "\u2661"
  # club "\u2667"
  # spade "\u2664"
  # diamond "\u2662"

  puts "Please enter your name"
  $name = gets.chomp

  class Blackjack
    #
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
            puts "Would you like to hit or stand"
            hit_or_stand = gets.chomp.downcase
         if hit_or_stand == "stand" #&& total(hand) =< 21
           hits += 4
           puts "Dealers Turn \n GOOD LUCK  " + $name
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

      # def dealer_begin(dealer_hand)
      #   if dealer_total(dealer_hand) >= 16
      #   dealer_deal(dealer_hand)
      #   end
      # end

      def dealer_total(dealer_hand)
        dealer_total = 0
        dealer_hand.each do |count|
          dealer_total += count
        end
        puts "The DEALER has total value of #{dealer_total}"
        dealer_total
    end
  end







  # def bet
  #   @amount = 100
  #   puts "Your account has #{@amount} dollars"
  # end
  # # def dealer
  # # end






  start = Blackjack.new
  start.welcome
  start.game
  start.dealer_game
