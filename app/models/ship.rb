class Ship
  attr_reader :name, :type, :booty
  @@all = []
  def initialize(attr)
    @name = attr[:name]
    @type = attr[:type]
    @booty = attr[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end