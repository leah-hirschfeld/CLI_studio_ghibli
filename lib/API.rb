require 'pry'
class API

  def initialize
  end

  def self.fetch_films
    url = 'https://ghibliapi.herokuapp.com/films'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    array = JSON.parse(response)

    array.each do |film_hash|
      film = Film.new
      film.title = film_hash["title"]
      film.director = film_hash["director"]
      film.producer = film_hash["producer"]
      film.release_date = film_hash["release_date"]
      film.description = film_hash["description"]
      film.rt_score = film_hash["rt_score"]
    end

  end

end
