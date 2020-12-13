class DogBreeds::API
  attr_reader :url

  def initialize
    @url = 'https://api.thedogapi.com/v1/breeds'
  end

  def get_dog_breeds
    puts 'Loading dataset.'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    puts 'Dataset loaded!'
    binding.pry
  end

end


