class CLI

  def initialize
  end

  def start
    puts "Welcome!"
    API.fetch_films
  end

end
