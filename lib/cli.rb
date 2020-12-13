class DogBreeds::CLI
  attr_accessor :name
  def run
    # welcome
    list_breeds
    user_input
    # goodbye
  end

  def welcome
    puts "Hello, and welcome to this quick reference to various dog breeds."
    puts "Please select the number to view more about each breed."
  end

  def get_data
    DogBreeds::API.new.get_dog_breeds
  end

  def list_breeds
    list = Array.new()
    breeds_array = get_data
    breeds_array.each do |breed|
      dog = DogBreeds::Dog.new(breed['name'])
      dog.add_attributes(breed)
      list << dog.name
      # binding.pry
    end

    # This will print out a numbered list
    list.each.with_index(1) do |name, index|
      puts "#{index}. #{name}"
    end
    # binding.pry
  end

  def user_input
    puts "Please select the number to the corresponding breed to view more."
    input = gets.chomp.to_i
    if !input.is_a? Integer
      puts "Please use digits only."
    elsif input == range(1..172)
      puts "Valid number"
    else
      puts "FIXME: this did something else?"
    end
  end

  def run_again?
    puts 'Would you like to see more?'
    puts 'Y/N'
    input = ''
    while input != "Y" || input != "N"
      input = gets.chomp.upcase
      if input == "Y"
        get_data
        return
      elsif input == "N"
        return
      else 
        puts 'Please input "Y" or "N".'
      end
    end
  end

  def goodbye
    puts "Thank you and"
    sleep(0.5)
    puts 'Have a good day!'
    exit
  end
end