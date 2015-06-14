class Fish
  
  attr_reader :name # cannot change its name
  attr_accessor :mood # can change its mood

  def initialize(name)
    @name = name # can initializes with a name
    @mood = "nervous" # cat initializes with a nervous mood
  end

end