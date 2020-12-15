class DogBreeds::Breed
  @@all = []

  def initialize(breed)
    @breed = breed
    breed.each do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
    @@all << self
  end 


  def self.all
    @@all
  end

end