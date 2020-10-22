class CLI

  def initialize
  end

  def start
    puts "Welcome to the World of Studio Ghibli! What would you like to learn more about?"
    puts "\n"

    sleep(2)

    puts "  To see a list of Studio Ghibli movies, put 'Movies'."
    puts "  To see a list of Studio Ghibli directors, put 'Directors'."
    puts "  To see a list of Studio Ghibli movies by decade, put 'Year'."
    puts "  To see a list of Studio Ghibli movies by rotten tomato score, put 'Scores'."
    puts "  To leave, put 'Exit'."

    puts "\n"

    sleep(3)

    API.fetch_films
  end

end
