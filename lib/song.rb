require "pry"

class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(filename)
    details = filename.split(" - ")
    song = self.new(details[1])
    artist = Artist.find_or_create_by_name(details[0])
    song.artist = artist
    artist.add_song(song)
    song
  end 
    
 
end