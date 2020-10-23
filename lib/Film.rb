require 'pry'
class Film
  attr_accessor :title, :director, :producer, :rt_score, :release_date, :description

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def directors
    self.director.collect{|film| film.title}
    binding.pry
  end

end
