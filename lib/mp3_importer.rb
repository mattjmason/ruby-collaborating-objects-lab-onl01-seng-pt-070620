class MP3Importer
  attr_accessor :path, :files 
  
  def initialize(path)
    self.path = path 
    self.files = []
  end 
  
  def files 
    @files = Dir.glob(self.path+"/*.mp3")
    @files.collect do |file| file.slice!(0..@path.length)
    end 
    @files 
  end 

  
  def import 
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
    end 
  end 
  
  
end 