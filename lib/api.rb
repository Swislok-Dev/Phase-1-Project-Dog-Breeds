class DogBreeds::API
  attr_accessor :breed
  def initialize
    @url = 'https://api.thedogapi.com/v1/breeds'
  end

  def get_dog_breeds
    uri = URI(@url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    # new_data = DogBreeds::Breed.new(data)
    # binding.pry
    data.each { |dog| DogBreeds::Breed.new(DogBreeds.remove_elements(dog)) }
  end

 
end



