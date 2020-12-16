class DogBreeds::Dog
  attr_accessor :name, :id
 

  @@all = []

  def initialize(name, id)
    @name = name
    @id = id
    @@all << self
  end

  def add_attributes(dataset)
    dataset.map do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
  end
end








#   def initialize(name)
#     name.map do |key, value|
#       self.class.attr_accessor key
#       self.send("#{key}=", value)
#     end
#     self.breed = breed if breed
#     save

#   end

#   def breed=(breed)
#     @breed = breed
#     breed.add_breed_data(breed)
#   end

#   def self.find_by_name(name)
#     @@all.find { |find| find if find.name == name }
#   end

#   def save
#     @@all << self
#     DogBreeds::Breed.create(self.name)
#   end

#   def self.breeds
#     @@breeds
#   end

#   def self.all
#     @@all
#   end
# end