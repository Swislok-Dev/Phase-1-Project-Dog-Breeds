class DogBreeds::API
  extend DogBreeds

  def initialize
    @url = 'https://api.thedogapi.com/v1/breeds'
  end

  def get_dog_breeds
    uri = URI(@url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    # binding.pry
    # data.each { |dog| @dog_id = DogBreeds::Dog.new(DogBreeds.remove_elements(dog)) }
  end

end



