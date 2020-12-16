class DogBreeds::API
  attr_accessor :name
  extend DogBreeds

  def initialize
    @url = 'https://api.thedogapi.com/v1/breeds'
  end

  def get_dog_breeds
    uri = URI(@url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
  end

end



