class Song
  attr_accessor :artist, :name

@@all = []
  def initialize(name)
    @name = name
  end

def self.all
  @@all
end
  def artist_name=(name)
    
  end

  def self.new_by_filename(file)
   song_name = flie.split("-")[1]
  end
end
  