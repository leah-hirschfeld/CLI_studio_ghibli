require 'pry'
class Director
  attr_accessor :name, :films

  @@all = []

  def initialize(name)
    @name = name
    @films = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create(name)
    new_director = self.new(name)
    new_director.save
    new_director
  end

  def self.find_by_name(name)
    self.all.find{|a| a.name == name}
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) || create(name)
  end

end
