require 'pry'

def initialize_app
   menu
end
   
def menu
    puts "Welcome to Flatiron Movies"
    puts "Please choose an option:"
    puts "1. List all Movies"
    puts "2. List ticket holder names"
    puts "3. Add ticket"
    puts "0. to exit"

    user_input = gets.strip
        
    case user_input
    when "1" 
        movies = ["Dune", "The Princess Bride", "Black Widow", "Sphere", "Event Horizon", "Soul", "Toy Story", "Inception"]

        movies.each {|m| puts m}
    when "2" 
    when "3" then puts create_ticket
    else
        puts "goodbye"
    end
end

    def create_ticket
       puts "name"
       name = gets.strip
       puts "Title"
       title = gets.strip

       t1 = Ticket.new(name, title)
       binding.pry
    end
