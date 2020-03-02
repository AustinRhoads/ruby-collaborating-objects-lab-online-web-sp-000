class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
@name = name
@@all << self
end




def self.all
@@all
end

def self.new_by_filename(name)
file = name.split(" - ")
  song = Song.new(file[1])
  song.artist = Artist.find_or_create_by_name(file[0])
  song.artist.add_song << song
  song
end

end
