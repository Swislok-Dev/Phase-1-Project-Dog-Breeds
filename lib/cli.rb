class DogBreeds::CLI
  def run
    welcome
    get_data
    goodbye
  end

  def welcome
    puts "Hello, and welcome to this quick reference to various dog breeds."
    sleep(0.5)
    puts "Please select the number to view more about each breed."
    sleep(0.5)
  end

  def get_data
    DogBreeds::API.new.get_dog_breeds
    sleep(0.5)
    puts 'Done.'
    run_again?
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