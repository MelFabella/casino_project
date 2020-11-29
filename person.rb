class Person
  attr_accessor :name, :money
   
  def initialize
    puts 'Whats is your name?'
    @name = gets.strip
    @money = 100.0
  end
end
#   attr_accessor :name, :bankroll

#   def initialize (name, bankroll)
#     @name = [] 
#     @bankroll = [20]
#     enter_name
#   end

#   def enter_name
#     puts "Enter Name"
#     named = gets.strip
#     @name << named
#     puts "Hi #{name} "
#     balance
#   end

#   def balance
#     puts "Your Credit is: #{bankroll}"
#   end
# end

# Mel = Person.new('Mel', 20)
# puts Mel.name
# puts Mel.bankroll