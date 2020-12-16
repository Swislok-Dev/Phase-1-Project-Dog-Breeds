module DogBreeds
  def self.add_attributes(dataset)
    dataset.map do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
  end

  def self.remove_elements(dataset)
    new_hash = {}
    dataset.each do |key, value|
      next if key == "image" || key == "reference_image_id"
      new_hash[key] = value
    end
    new_hash
  end
end