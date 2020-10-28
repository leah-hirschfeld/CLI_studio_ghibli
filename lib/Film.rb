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

  def director=(director)
    @director = director
    if !director.films.include?(self)
      director.films << self
    end
  end

end
