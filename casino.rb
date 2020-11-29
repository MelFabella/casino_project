# Start game player has a name and an initial bankroll
# Player can go to different games via menu
#   Slots
#   High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses

require_relative 'person'
require_relative 'high_low'
require_relative 'odd_even'

class Menu
  def initialize
    @person = Person.new
    # create person
    show_menu
  end

  def show_menu
      puts '>>>$$$<<<'
      puts 'Welcome! Select an Option:'
      puts '1. Odd or Even'
      puts '2. High / Low'
      puts '3. Check Credit'
      puts '4. Exit'
      user_input
  end

  def user_input 
    user_info = gets.to_f
    if user_info == 1
      Odd_even.new(@person)
    elsif user_info == 2
      High_low.new(@person)
    elsif user_info == 3
      puts "You have $#{@person.money}"
    elsif user_info == 4
      puts 'Have a nice day!'
      exit
    else
      puts "Invalid Entry, Try Again!"
      show_menu
    end
      show_menu
  end 
end

Menu.new



#game is odds or evens user guesses if it is odd or even and code displays random number
# Start game player has a name and an initial bankroll
# class Menu
#   def initialize
#       prompt
#   end

#   def prompt
#       puts "What's your name?"
#       @user_name = gets.chomp #instance variable accessible in multiple methods 
#       Bankroll.new(@user_name)
#       Game.new(@user_guess)
#   end 
# end

# class Bankroll
#   attr_accessor :user_name

#   def initialize(user_name)
#       @user_name = user_name
#       prompt 
#   end

#   def prompt 
#       puts "Hello #{@user_name} you have $100 to play with"
#   end
# end

# class Game
#   attr_accessor :user_guess
  
#   def initialize(user_guess) 
#       @user_guess = user_guess
#       prompt 
#   end 
  
#   def prompt 
#       puts "The game is Odds or evens, if you guess whether the number is odd or even correctly, you win."
#       puts "Choose your guess by entering 1. For Odds or 2. For Evens"
#       choice = gets.to_f
#       puts rand(1)
#       if choice == rand(1)
#           puts "Nice! You won $10"
#           puts @bankroll += 10
#       elsif
#           puts "oops! you lost $10"
#           puts @bankroll -= 10
#       end 
#   end
# end

# Menu.new