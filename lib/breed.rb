class DogBreeds::Breed    # Breed class holds :id and :name of breed to be listed for user
  attr_accessor :name
  attr_reader :dog_id
  extend DogBreeds

  @@all = []

  def initialize(breed)
    @breed = breed
    @breeds = {}
    @@all << self
  end 

 

  # def self.create(name)
  #   breed = new(name)
  #   breed.save
  #   breed
  # end

  def self.all
    @@all
  end
end




