module DogBreeds
  def self.remove_elements(dataset)
    new_hash = {}
    dataset.each do |key, value|
      next if key == "image" || key == "reference_image_id"
      new_hash[key] = value
    end
    new_hash
  end

  def self.breeds
    DogBreeds::Breed.all
  end

  def self.find_by_id(id)
  end

end