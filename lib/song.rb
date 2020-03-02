class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
@name = name
@@all << self
end

def artist(name)
@artist = name
end


def self.all
@@all
end

def self.new_by_filename(name)
file = name.split(" - ")
  song = Song.new(file[1])
  artist = Artist.new(file[0])
  song.artist = artist
  song
end

end
