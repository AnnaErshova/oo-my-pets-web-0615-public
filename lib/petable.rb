module Petable
  module InstanceMethods
    attr_reader :name
    attr_accessor :mood

    def initialize(name)
      @name = name
      @mood = "nervous"
    end # end intialize
  end # end InstanceMethods
end # end Petable