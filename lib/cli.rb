# another method with options
# enter list to see all superheroes
# press number for opinions XD 
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
    puts "Type the number of you favorite Character. If you love DC Comics, press 26, and if you want to quit, press q!".green
    input = gets.strip.downcase
    if input == "26"
      puts "In the ratings game, Marvel wins by a large margin: 66% of Marvel films are certified fresh compared to 54% of DC films.".red
    elsif input == "13"  
     puts "OMG, same!! YOU HAVE GREAT TASTE!".blue
    elsif input != "q"
      puts "Good Job! Marvel Heroes are always the Best!!".red
    end
  end
    
end

def goodbye
  puts ""
  puts "-------------------------------------------------"
  puts "       It's not about how much we lost. 
      It's about how much we have left.
       ~ Tony Stark, Avengers: Endgame  "
  puts "-------------------------------------------------"
    

      end
    end 