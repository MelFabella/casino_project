class Odd_even
  def initialize(person)
    @person = person
    @guess = rand(2)
    user_bet
  end

  def user_bet
    puts "Welcome, Place your bet."
    bet = gets.to_i
    puts "Guess by Entering 0. Even or 1. Odd"
    choice = gets.to_i
    # puts rand(1)
    result(bet)
  end

  def result(bet)
    if @guess == rand(2)
      puts "Nice! You won #{bet}"
      @person.money += bet
    else
      puts "Aww! You lose #{bet}"
      @person.money -= bet
    end
      play_again
  end

  def play_again
    puts "Play Again? (y) or (n)"
    choice = gets.strip.downcase

    if 
      @play_again = Odd_even

    else 
      @play_again = "n"
      puts "thanks for playing!"
    end
  end

  #   when "y"
  #     Odd_even.new
  #   when "n"
  #     puts "Thanks for playing!"
  #   else
  #     play_again
  #   end
  # end
end 
