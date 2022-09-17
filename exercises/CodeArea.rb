require 'active_support/core_ext/hash/slice'

dial_book = {
    "porto alegre" => "51",
    "guaiba" => "51",
    "caxias" => "54",
    "passo fundo" => "55",
    "fortaleza" => "81",
    "santos" => "14",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }
   
  def get_city_names(dial_book)
    return dial_book.keys
  end
   
  def get_area_code(city_name, cities_list)
    puts "The area code for " + city_name + " is: " + cities_list[city_name]
  end
   
loop do
    puts "Do you want to lookup an area code based on the city name?"
    puts "Insert 'Y' for YES or any other key to exit the program."
    input = gets.chomp.downcase
    break if input != 'y' 
    puts "Which city do you wante the code for?"
    p get_city_names(dial_book)
    input = gets.chomp.downcase
    if dial_book.include?(input)
    puts get_area_code(input,dial_book)
    else
        puts "Invalid city name."
    end
end
  puts "Thank you for using this program. End."