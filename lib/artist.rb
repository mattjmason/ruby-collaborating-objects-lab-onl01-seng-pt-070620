class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    self.name = name 
    self.songs = []
    save
  end 
  
  def save 
    @@all << self  
  end 
  
  def add_song(song)
    self.songs << song 
  end 
  
  def self.find_or_create_by_name(name)
    artist = @@all.detect do |artist| artist.name == name 
    end 
    artist = artist.nil? ? Artist.new(name) : artist
  end 
  
  def print_songs
    self.songs.each do |song| puts "#{song.name}"
    end 
  end 

def self.all 
  @@all  
end 

def songs 
  @songs 
end 

  
end 
