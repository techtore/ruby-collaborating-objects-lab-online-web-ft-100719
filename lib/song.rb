require 'pry'
class Song 
  attr_accessor :name, :artist
  @@all  = []

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(file) # Michael Jackson - Black or White - pop.mp3
  
    artist_name = file.split(" - ")[0]  # split artist at " - " and song name at " - "
    song_name = file.split(" - ")[1]
    new_song = self.new(song_name)
    new_song.artist_name = artist_name
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end 