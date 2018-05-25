require 'pry'

class Owner

  attr_accessor :pets, :name  
  attr_reader :species 
  
  @@all = []
  
  def initialize(species)
    @species = species 
    @@all << self 
    @pets = {:fishes => [],:dogs => [], :cats => []}
  end  
#  binding.pry
  
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
    "I am a #{species}."
  end   
  
  def buy_fish(name) 
    fish = Fish.new(name)
    @pets[:fishes] << fish 
  end  
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end  
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end   
  
  def walk_dogs  #all the dogs (collection of dogs)
    @pets[:dogs].each {|dog| dog.mood = "happy"} 
  end   
  
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end  
  
  def feed_fish 
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end   
  
  def sell_pets
    @pets.each {|pet, mood| pet.mood  = "nervous"}
    @pets.empty?
    
  end   
   # binding.pry 
  
  
  
    


end

