require 'pry'

class Owner

  attr_accessor :pets, :name  
  attr_reader :species 
  
 # @@counter = 0 
  @@all = []
  
  def initialize(species)
    @species = species 
    @@all << self 
  end  
  
  def self.all 
    @@all 
  end   
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all 
    @@all.clear 
  end   
 #   binding.pry 
  
  
  
    


end

