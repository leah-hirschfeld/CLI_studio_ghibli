require 'pry'
class Director
  attr_accessor :title, :director, :producer, :rt_score, :release_date, :description

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
