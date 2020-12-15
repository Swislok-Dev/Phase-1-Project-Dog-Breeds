class DogBreeds::Breed
  attr_accessor :breed
  extend DogBreeds
  @@all = []

  def initialize(data)
    @breed = self
    data.each do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
    @@all << self
  end 

  def self.all
    @@all
  end
end