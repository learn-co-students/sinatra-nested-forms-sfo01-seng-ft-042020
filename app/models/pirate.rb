class Pirate
  attr_reader :name, :weight, :height, :ships
  @@all = []
  
  def initialize(args)
      @name = args[:name]
      @weight = args[:weight]
      @height = args[:height]
      @ships = args[:ships]
      @@all << self
  end





  def self.all
      @@all
  end


end