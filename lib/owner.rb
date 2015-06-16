class Owner

  attr_reader :species #cannot change its species
  attr_accessor :pets, :name
  @@owners = Array.new

  # instance methods
  # ________________

  def initialize(species) # initialized with an owner name
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@owners << self
  end

   # ________________

  def buy_fish(name) # adds a value to the fish key in the hash
    @pets[:fishes] << Fish.new(name) # initializes a fish
  end

  def buy_cat(name) # adds a value to the cat key in the hash
    @pets[:cats] << Cat.new(name) # initializes a cat
  end

  def buy_dog(name) # adds a value to the dog key in the hash
    @pets[:dogs] << Dog.new(name) # initializes a dog
  end

 # ________________

  # Owner walks the dogs which makes the dogs' moods happy
  # for all dogs of this owner, change their mood to happy
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  # Owner plays with the cats which makes the cats moods happy
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}    
  end

  # Owner feeds the fishes which makes the fishes' moods happy
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

 # ________________

  def sell_pets
    @pets.values.each {|pet_array| pet_array.each {|pet| pet.mood = "nervous" }} # change mood to nervous
    @pets.clear # empties the hash because all pets are sold
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def say_species
    "I am a #{@species}."
  end

  # class methods
  # _____________

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = [] # empties the array of owners
  end  

  def self.count
    @@owners.count
  end

end