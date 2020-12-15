class DogBreeds::Dog
  attr_accessor :id, :name

  @@all = []

  def initialize(id, name)
    @id = id
    @name = name
    @@all << self
    binding.pry
  end

  def add_attributes(breeds_array)
    breeds_array.each do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
  end

  def self.all
    @@all
  end
end



















#   attr_accessor :name, :dog_id
#   attr_reader :breed
#   extend DogBreeds

#   @@all = []

#   def initialize(data)
#     data.each do |key, value|
#       self.class.attr_accessor key
#       self.send("#{key}=", value)

#     end
    
#     @@all << self
#     binding.pry
#   end

#   def breed=(breed)
#     @breed = breed
#     DogBreeds::Breed.add_dog(breed)
#   end


#   def self.all
#     @@all
#   end
# end



