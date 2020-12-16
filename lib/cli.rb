class DogBreeds::CLI
  attr_accessor :name
  def run
    system('clear')
    welcome
  end

  def welcome
    puts "Hello, and welcome to this quick reference to various dog breeds."
    puts "Select a number to view more of that breed.\n".blue
    get_data
    list_breeds
  end

  def get_data
    breeds_array = DogBreeds::API.new.get_dog_breeds
    breeds_array.compact
    breeds_array.map do |breed|
      DogBreeds::Breed.new(breed)
    end
  end

  def list_breeds
    puts "\n"
    list_position = 1
    DogBreeds::Breed.all.each do |breed|
      if breed.name 
        puts "#{list_position}. #{breed.name}"
        list_position += 1
      end
    end
    select_breed
  end

  def list_breeds_again
    list_position = 1
    puts "Select a number to view more of that breed.\n".blue
    DogBreeds::Breed.all.each do |breed|
      if breed.name 
        puts "#{list_position}. #{breed.name}"
        list_position += 1
      end
    end
  end

  def select_breed
    puts "\nSelect a number to view more of that breed.\n".blue
    input = gets.strip.to_i 
    puts "\n"      # Create error for non-number
    if input < 1 || input > DogBreeds::Breed.all.count
      system('clear')
      list_breeds_again
      puts "\nError: Invalid input, please enter a valid choice.".red
      select_breed 
    end
    
    selected_breed = DogBreeds::Breed.all[input - 1]
    puts "Breed: #{selected_breed.name}".green if selected_breed.name
    puts "Breed group: #{selected_breed.breed_group}".green if selected_breed.breed_group
    puts "Temperament: #{selected_breed.temperament}".green if selected_breed.temperament
    puts "Bred for: #{selected_breed.bred_for}".green if selected_breed.bred_for
    puts "Life span: #{selected_breed.life_span}".green if selected_breed.life_span
    puts "Weight: #{selected_breed.weight['imperial']} inches".green if selected_breed.weight
    puts "Height: #{selected_breed.height['imperial']} inches".green if selected_breed.height
    puts "Origin: #{selected_breed.origin}".green if selected_breed.origin
    puts "Country code: #{selected_breed.country_code}".green if selected_breed.country_code
    puts ""
    sleep(0.5)
    run_again?
  end

  def run_again?
    puts 'Would you like to see more?'
    puts 'Y/N'
    input = ''
    while input != "Y" || input != "N"
      input = gets.chomp.upcase
      if input == "Y"
        list_breeds
        # return
      elsif input == "N"
        system('clear')
        return goodbye
      else 
        puts 'Please input "Y" or "N".'
      end
    end
  end

  def goodbye
    puts "Thank you and"
    sleep(0.3)
    puts 'Have a good day!'
    exit
  end
end