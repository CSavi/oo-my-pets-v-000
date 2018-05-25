require 'pry'

class Owner

  attr_accessor :pets, :name  
  attr_reader :species 
  
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
  
  def say_species 
    puts "I am a #{species}."
  end   
 #   binding.pry 
  
  
  
    


end

