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

    def deal
         card = rand(1..10)
         hand << card
       end
    def begin_cards
      deal

      deal
      total
    end
    def total


    def game
      hand = []
    end
    def hit
      puts "Would you like to hit or stand"
      hit_or_stand = gets.chomp.downcase
      if hit_or_stand == "stand" &&
      end
    end



  end


start = Blackjack.new
start.welcome
