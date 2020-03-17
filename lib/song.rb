class Song
  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def initialize(name, artist=nil, genre=nil)
    self.name = name
  end

  def self.create(name, artist=nil)
    song = self.new(name, artist)
    song.save
    song
  end

  def save
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
end
