# another method with options
# enter list to see all superheroes
# press number for more details
# press q to quit

class MarvelHeroes::CLI

def call   
    marvel_heroes = Scraper.get_character_name
    welcome
    display_characters(marvel_heroes)
    options
    goodbye
end

def welcome
    puts ""
    puts "-------------------------------------------------".blue
    puts "  Featuring the best super heroes in the world   ".red
    puts "-------------------------------------------------".green
end



def display_characters(marvel_heroes)
    marvel_heroes.each.with_index(1) do |marvel_hero, i|
      puts "#{i}.   #{marvel_hero}"
    end
end

def options
    input = nil
  while input != "q"
    puts "Type the number of you favorite Character"
    input = gets.strip.downcase
    if input == "13"
      puts "Great Taste!"
    elsif input == "2" 
      puts  "Love her!"
    elsif input != "q"
      puts "Do Better. Try again".red
    end
  end
    
end

def goodbye
  puts ""
  puts "-------------------------------------------------"
  puts "           It's not about how much we lost. 
                  It's about how much we have left.”
                  ~ Tony Stark, Avengers: Endgame  "
  puts "-------------------------------------------------"
    

      end
    end 