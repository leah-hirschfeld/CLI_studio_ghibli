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
    self.list_films
  end

  def list_films
    user_input = gets.strip.downcase
    puts "\n"

    if user_input == "movies" || user_input == "movie" || user_input == "film" || user_input == "films"
      puts "Great choice! Here are the Studio Ghibli movies!"
      puts "\n"
      display_list_of_films
  end

  def display_list_of_films
    Film.all.each_with_index do |film, index| #make alphabetical order
      puts "#{index + 1}. #{film.title}"
    end
  end

end
