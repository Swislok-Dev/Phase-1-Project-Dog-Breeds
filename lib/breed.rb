class DogBreeds::Breed   # Breed class holds :name of breed to be listed for user
  attr_accessor :name
  extend DogBreeds

  @@all = []

  def initialize(name)
    @name = name
  end 
end








#   def add_breed_data(breed_data)
#     breed_data.breed = self unless breed_data.breed
#     @dog_breed_data << breed_data unless self.dog_breed_data.include?(breed_data)
#   end

#   def dog_breed_data
#     @dog_breed_data
#   end

#   def save
#     @@all << self
#   end

#   def self.create(name)
#     breed_name = new(name)
#     breed_name.save
#     breed_name
#   end

#   def self.all
#     @@all
#   end
# end




