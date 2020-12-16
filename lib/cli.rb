class DogBreeds::CLI
  attr_accessor :name
  def run
    welcome
    # goodbye
  end

  def welcome
    puts "Hello, and welcome to this quick reference to various dog breeds."
    puts "Please select the number to view more about each breed."
    breeds_array = get_data
    list_breeds(breeds_array)
  end

  def get_data
    breeds_array = DogBreeds::API.new.get_dog_breeds
    breeds_array.map do |breed|
      new_dog = DogBreeds::Dog.new(breed["name"], breed["id"])
    end
  end

  def list_breeds(array)
    list = Array.new()
    array.each_with_index do |element, index|   # This will create list to be printed
      list << element.name
    end

    list.each.with_index(1) do |name, index|    # This will print out a numbered list
      puts "#{index}. #{name}"
    end

    puts "\nChoose the number to view more on that breed."
    input = gets.strip.to_i
    if !input.is_a? Integer || input < 1 || input > 172
      list_breeds(array)
    end
    list.each.with_index(1) do |stuff, index|
      if input == index
        puts stuff
      end
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