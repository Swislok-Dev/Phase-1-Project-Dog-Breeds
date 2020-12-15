class DogBreeds::API
  attr_accessor :breed
  def initialize
    @url = 'https://api.thedogapi.com/v1/breeds'
  end

  def get_dog_breeds
    puts 'Loading dataset.'
    uri = URI(@url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    data
  end
   # data.each do |dog|
    #  DogBreeds::Breed.new(dog)
    #end

    # data.collect { |dog| dog = DogBreeds::Breed.new(dog) }

    # data.each do |dog|
    #   get_breed_data(dog)
    # end
   # puts 'Dataset loaded!'
    #binding.pry
  

  def dww
    data = get_dog_breeds
    data.each 
    new_hash = {
      "weight" => get_dog_breeds[0]["weight"]["imperial"],
      "height" => get_dog_breeds[1]["height"]["imperial"],
      "id" => get_dog_breeds[2]["id"],
    }
    binding.pry
    DogBreeds::Breed.new(new_hash)
  end
   # binding.pry
  binding.pry


  

  # def get_breed_data(url)
  #   uri = URI(url)
  #   response - Net::HTTP.get(uri)
  #   data = JSON.parse(response)
  #   DogBreeds::Breed.new(data)
  # end

end



