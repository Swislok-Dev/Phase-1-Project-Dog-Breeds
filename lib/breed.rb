class DogBreeds::Breed
  attr_accessor :breed
  extend DogBreeds
  @@all = []

  def initialize(data)
    @breeds = []
    @breed = self
    data.each do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
    @@all << self
    @breeds << self
    binding.pry
  end 

  def self.all
    @@all
  end

  def breeds
    @breeds
  end
end