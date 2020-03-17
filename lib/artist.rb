class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def initialize(name)
    self.name = name
    @songs = []
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
end
