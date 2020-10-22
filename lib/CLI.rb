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

    if user_input == "movies"||user_input == "movie"||user_input == "films"||user_input == "film"
      puts "Great choice! Here are the Studio Ghibli movies!"
      puts "\n"
      display_list_of_films
    end

    if user_input == "director"||user_input == "directors"
      puts "Excellent! Here are the Studio Ghibli directors!"
      puts "\n"
      display_list_of_directors
    end

    if user_input == "year"||user_input == "years"
      puts "Absolutely! Here are the movies by release date!"
      puts "\n"
      display_list_of_years
    end

    if user_input == "scores"||user_input == "score"
      puts "Of course! Here are the rotten tomato Scores!"
      puts "\n"
      display_list_of_rt_scores
    end
  end

  def display_list_of_films
    Film.all.each_with_index do |film, index|
      puts "#{index + 1}. #{film.title}"
    end
  end

  def display_list_of_directors
    Film.all.each_with_index do |film, index|
      puts "#{index + 1}. #{film.director}"
    end
  end

  def display_list_of_years
    Film.all.each_with_index do |film, index|
      puts "#{index + 1}. #{film.title}, Release Date: #{film.release_date}"
    end
  end

  def display_list_of_rt_scores
    Film.all.each_with_index do |film, index|
      puts "#{index + 1}. #{film.title}, Rotten Tomato Score: #{film.rt_score}"
    end
  end

end
