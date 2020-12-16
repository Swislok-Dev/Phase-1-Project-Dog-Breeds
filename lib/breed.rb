class DogBreeds::Breed   
  attr_accessor :name
  extend DogBreeds

  @@all = []

  def initialize(breed)
    breed.map do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
    @@all << self
  end 

  def self.all
    @@all
  end
end
