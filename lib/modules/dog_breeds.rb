module DogBreeds
  def self.remove_elements(dataset)
    new_hash = {}
    dataset.map do |key, value|
      next if key == "image" || key == "reference_image_id"

      new_hash[key] = value
    end
    new_hash
  end

end













#   def list_data(array)

#   end
  
#   def save
#     self.class.all << self
#   end

#   def self.find_by_id(id)
#   end
# end



# The follow code may or may not be used.
  # def dww
  #   data = get_dog_breeds
  #   new_hash = {
  #     "weight" => get_dog_breeds[0]["weight"]["imperial"],
  #     "height" => get_dog_breeds[1]["height"]["imperial"],
  #     "id" => get_dog_breeds[2]["id"],
  #   }
  #   binding.pry
  #   DogBreeds::Breed.new(new_hash)
  # end
