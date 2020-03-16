  require 'pry'
class Artist 
  @@all = []
   attr_accessor :name ,:songs
   
   def initialize(name)
    @name = name
    @songs = []
    @@all << self
   end
   
  
  
  def self.all
    @@all
  end
  
  def add_song(song)
  @songs.push(song) unless @songs.include?(song)
  song.artist = self unless song.artist == self
 end
  
  def save
    @@all.push(self)
    self
  end
  
  def self.find_or_create_by_name(name) 
  self.find(name) || self.create(name)
  end
  
  def self.find(name)
  @@all.detect do |artist|
    artist.name == name
  end
 end
  
  def self.create(name)
    self.new(name).save
end


def print_songs
  @songs.each { |s| puts s.name}
  
end












end
