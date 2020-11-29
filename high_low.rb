require_relative 'deck'

class High_low

  def initialize(person)
    @person = person
    @deck = Deck.new
    start
  end

  def start
    puts "Hi! Place your bet please."
    bet = gets.strip.to_i
    if @person.money < bet
      puts "Sorry, come back again when you have enough credit!"
      return
    else
      dealt_card = @deck.pull_card
      next_card = @deck.pull_card
      puts "The card is #{dealt_card}"
      puts "What do you think the next card will be, higher or lower?"
      guess = gets.strip.downcase
      puts "The card is #{next_card}"
      if guess == 'higher'
        puts "Nice, you win a payout!"
              @person.money += bet
      elsif
        puts "You guessed incorrectly, sorry!"
        @person.money -= bet
      end
    end
  end
end

