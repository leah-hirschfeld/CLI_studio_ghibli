require 'pry'
class CLI

  def initialize
  end

  def start
    puts "Welcome to the World of Studio Ghibli!"
    puts "\n"

    sleep(1)

    puts "  To see a list of Studio Ghibli movies, put 'Movies'."
    puts "  To see a list of Studio Ghibli directors, put 'Directors'."
    puts "  To see a list of Studio Ghibli movies by decade, put 'Year'."
    puts "  To see a list of Studio Ghibli movies by rotten tomato score, put 'Scores'."
    puts "  To leave, put 'Exit'."

    puts "\n"

    API.fetch_films

    while true
      output=list_films
      if output == 'exit'
          puts "Thanks for stopping by!"
          break
       end
    end

  end

  def list_films
    puts "What would you like to see? Please put movie, year, director or score."
    puts "\n"
    user_input = gets.strip.downcase

    if user_input == "movies"||user_input == "movie"
      puts "Great choice! Here are the Studio Ghibli movies!"
      puts "\n"
      sorted_array_by_title = display_list_of_films
      ask_user_for_film_choice_by_title(sorted_array_by_title)
      puts "\n"
    elsif user_input == "director"||user_input == "directors"
      puts "Excellent! Here are the Studio Ghibli directors!"
      puts "\n"
      display_list_of_directors
      puts "\n"
    elsif user_input == "year"||user_input == "years"
      puts "Absolutely! Here are the movies by release date!"
      puts "\n"
      sorted_array_by_years = display_list_of_years
      ask_user_for_film_choice_by_year(sorted_array_by_years)
      puts "\n"
    elsif user_input == "scores"||user_input == "score"
      puts "Of course! Here are the rotten tomato scores!"
      puts "\n"
      sorted_array_by_rt_score = display_list_of_rt_scores
      ask_user_for_film_choice_rt_score(sorted_array_by_rt_score)
      puts "\n"
    elsif user_input == "exit"
    else
      puts "\n"
      puts "Whoops! That didn't work. Please input a valid entry."
      puts "\n"
    end
    user_input
  end

  def display_list_of_films
    sorted_array_by_title = Film.all.sort_by {|film| film.title}
    sorted_array_by_title.each_with_index do |film, index|
      puts "#{index + 1}. #{film.title}"
    end
    sorted_array_by_title
  end

  def display_list_of_directors
    Director.all.each_with_index do |director, index|
      puts "#{index + 1}. #{director.name}"
    end
    #Film.all.each_with_index do |film, index|
      #puts "#{index + 1}. #{film.title}, Film Director: #{film.director}"
    #end
  end

  def display_list_of_years
    sorted_array_by_years = Film.all.sort_by {|film| film.release_date.to_i}
    sorted_array_by_years.each_with_index do |film, index|
      puts "#{index + 1}. #{film.title}, Release Date: #{film.release_date}"
    end
    sorted_array_by_years
  end

  def display_list_of_rt_scores
    sorted_array_by_rt_score = Film.all.sort_by {|film| film.rt_score.to_i}
    sorted_array_by_rt_score.each_with_index do |film, index|
      puts "#{index + 1}. #{film.title}, Rotten Tomato Score: #{film.rt_score}"
      end
    sorted_array_by_rt_score
  end

  def ask_user_for_film_choice_by_title(array)
    puts "\n"
    puts "Enter the number of the film you'd like to learn more about!"
    user_input_as_index = gets.strip.to_i - 1

    until user_input_as_index.between?(0, Film.all.length)
      puts "Whoops! That didn't work. Choose a valid number please."
      puts "\n"
      user_input_as_index = gets.strip.to_i - 1
    end

    film_instance = array[user_input_as_index]

    display_film_details(film_instance)
  end

  def display_film_details(film)
    puts "\n"
    puts film.title
    puts "\n"
    puts "Description: " + film.description
    puts "\n"
    puts "Director: " + film.director
    puts "Producer: " + film.producer
    puts "Release Date: " + film.release_date
    puts "Rotten Tomato Score: " + film.rt_score
  end

  def ask_user_for_film_choice_rt_score(array)
    puts "\n"
    puts "Enter the number of the film you'd like to learn more about!"
    user_input_as_index = gets.strip.to_i - 1

    until user_input_as_index.between?(0, Film.all.length)
      puts "Whoops! That didn't work. Choose a valid number please."
      puts "\n"
      user_input_as_index = gets.strip.to_i - 1
    end

    film_instance = array[user_input_as_index]

    display_film_details(film_instance)
  end

  def display_rt_scores_details(film)
    puts "\n"
    puts film.title
    puts "\n"
    puts "Description: " + film.description
    puts "\n"
    puts "Director: " + film.director
    puts "Producer: " + film.producer
    puts "Release Date: " + film.release_date
    puts "Rotten Tomato Score: " + film.rt_score
  end

  def ask_user_for_film_choice_by_year(array)
    puts "\n"
    puts "Enter the number of the film you'd like to learn more about!"
    user_input_as_index = gets.strip.to_i - 1

    until user_input_as_index.between?(0, Film.all.length)
      puts "Whoops! That didn't work. Choose a valid number please."
      puts "\n"
      user_input_as_index = gets.strip.to_i - 1
    end

    film_instance = array[user_input_as_index]

    display_film_details(film_instance)
  end

  def display_film_by_year_details(film)
    puts "\n"
    puts film.title
    puts "\n"
    puts "Description: " + film.description
    puts "\n"
    puts "Director: " + film.director
    puts "Producer: " + film.producer
    puts "Release Date: " + film.release_date
    puts "Rotten Tomato Score: " + film.rt_score
  end

end
