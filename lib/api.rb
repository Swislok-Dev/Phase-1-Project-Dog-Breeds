require 'net/http'
require 'json'

class DogsAPI
  attr_reader :url

  def initialize
    @url = 'https://api.thedogapi.com/v1/breeds'
  end

  def get_dog_breeds_url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    puts 'This ran!'
  end

end


