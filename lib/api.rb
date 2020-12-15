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

  # def remove_elements(dataset)
  #   new_hash = {}
  #   dataset.each do |key, value|
  #     next if key == "image" || key == "reference_image_id"
  #     new_hash[key] << value
  #   end
  #   new_hash
  # end

  def dww
    data = get_dog_breeds
    new_hash = {
      "weight" => get_dog_breeds[0]["weight"]["imperial"],
      "height" => get_dog_breeds[1]["height"]["imperial"],
      "id" => get_dog_breeds[2]["id"],
    }
    binding.pry
    DogBreeds::Breed.new(new_hash)
  end


  # def get_breed_data(url)
  #   uri = URI(url)
  #   response - Net::HTTP.get(uri)
  #   data = JSON.parse(response)
  #   DogBreeds::Breed.new(data)
  # end

end



