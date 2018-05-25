require 'pry'

class Owner

  attr_accessor :pets, :name  
  attr_reader :species 
  
  @@counter = 0 
  @@all = []
  
  def self.all 
    @@all 
  end   
  
  def self.counter
    @@counter += 1 
  end 
  
  def self.reset 
    self.clear 
  end   
 #   binding.pry 
  
  
  def initialize(owner)
    @owner = owner
    @@all << owner
  end   
    


end

