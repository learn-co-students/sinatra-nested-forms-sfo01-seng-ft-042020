class Pirate

  attr_reader :name, :weight, :height
  @@all = []

  def initialize(attr)
    @name = attr[:name]
    @height = attr[:height]
    @weight = attr[:weight]
    @@all << self
  end

  def self.all
    @@all
  end
end