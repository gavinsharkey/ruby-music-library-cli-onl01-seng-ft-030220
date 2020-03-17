class Song
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def initialize(name)
    self.name = name
  end

  def self.create(name)

  def save
    @@all << self
  end


end
