require 'pry'
class MP3Importer

attr_accessor :path

def initialize(file)
@path = file
files = Dir.children(@path)
end



end
