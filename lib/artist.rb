class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.find_or_create_by_name(name)
    if  @@all.detect {|i| i.name == name} == false 
      artist = Artist.new(name)
      @@all << artist 
      artist
    else
      @@all.detect {|i| i.name == name}
    end 
  end
  
  
  
  
  
  
  