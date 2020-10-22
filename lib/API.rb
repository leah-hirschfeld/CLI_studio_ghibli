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
    end

  end

end

#array[#]["title"] = title of the film
#array[#]["director"] = director
#array[#]["producer"] = producer
#array[#]["release_date"] = year
#array[#]["description"] = description
#array[#]["rt_score"] = rotten tomato score; show by list?
