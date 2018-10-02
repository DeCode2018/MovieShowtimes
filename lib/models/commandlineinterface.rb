class CommandLineInterface


  def greet
    puts "Welcome to MovieShowtime!!!"
  end

  def menu
    puts "******************************"
    puts "Enter the menu # to select"
    puts "1. Create Theater"
    puts "2. Create Movie Entry"
    puts "3. Create Showtime Entry"
    puts "4. List available movies"
    puts "5. List available theaters"
    puts "6. List available showtimes"
    puts "7. Update theater info"
    puts "8. Delete Showtime"
    puts "9. Delete Movie"
    puts "10. Delete Theater"
    puts "******************************"
  end

  def get_user_input
    input = gets.chomp

    case input
      when "1"
      menu_1

      when "2"
      menu_2

      when "3"
      menu_3

      when "4"
      menu_4

      when "5"
      menu_5

      when "6"
      menu_6

      when "7"
      menu_7

      when "8"
      menu_8
    end
  end

  def menu_1
    #create theater
    puts "What is the new theater's name?"
    new_theater_name = gets.chomp
    puts "What is the address for #{new_theater_name}?"
    new_theater_address = gets.chomp
    puts "What is the website for #{new_theater_name}"
    new_theater_website = gets.chomp

    Theater.create(theater_name: new_theater_name, address: new_theater_address, website: new_theater_website)
    puts "**********************"
    puts "This is your new theater:"
    puts "#{new_theater_name}"
    puts "#{new_theater_address}"
    puts "#{new_theater_website}"
    puts "**********************"
  end

  def menu_2
    #create Movie Entry
    puts "What is the new movie's name?"
    new_movie_name = gets.chomp
    puts "What is the genre of #{new_movie_name}?"
    new_movie_genre = gets.chomp
    puts "What is the trailer link for #{new_movie_name}"
    new_movie_link_to_trailer = gets.chomp

    Movie.create(film_name: new_movie_name, film_genre: new_movie_genre, trailer: new_movie_link_to_trailer)
    puts "**********************"
    puts "This is your new movie entry:"
    puts "#{new_movie_name}"
    puts "#{new_movie_genre}"
    puts "#{new_movie_link_to_trailer}"
    puts "**********************"
  end

  def menu_3
    #create Showtime entry

    #get inputs from user
    puts "What theater are you entering a showtime for?"
    theater_name_showtime = gets.chomp
    puts "What movie are you entering a showtime for?"
    movie_name_showtime = gets.chomp
    puts "Enter showtime in format [hh:mm am/pm]"
    showtime = gets.chomp

    #creates new Showtime based on user inputs
    Showtime.create(film_name: movie_name_showtime, theater_name: theater_name_showtime, time: showtime)

    #displays to user the information they entered for "Showtime"
    puts "**********************"
    puts "This is your showtime entry:"
    puts "#{theater_name_showtime}"
    puts "#{movie_name_showtime}"
    puts "#{showtime}"
    puts "**********************"
  end

  def menu_4
    #list available movies
    all_movies = Movie.all
    all_movies.each do |movie|
      puts movie.film_name
    end
  end

  def menu_5

  end

  def menu_6

  end

  def menu_7

  end

  def menu_8

  end

  def menu_9

  end

  def menu_10

  end


end
