require 'pry'
require 'launchy'
require 'tty'


class CommandLineInterface



  def greet
    puts "               WELCOME TO MOVIESHOWTIME!!!"
    system "say Welcome to Movie Showtime"
  end

  def menu
    puts "*********************************************************************"
    puts "*               Enter the menu # to select                          *"
    puts "*-------------------------------------------------------------------*"
    puts "*               1. Create Theater                                   *"
    puts "*               2. Create Movie Entry                               *"
    puts "*               3. Create Showtime Entry                            *"
    puts "*               4. List available movies                            *"
    puts "*               5. List available theaters                          *"
    puts "*               6. List available showtimes                         *"
    puts "*               7. Update theater info                              *"
    puts "*               8. Delete Showtime                                  *"
    puts "*               9. Delete Movie                                     *"
    puts "*               10. Delete Theater                                  *"
    puts "*               11. WARNING...DON'T SELECT THIS OPTION!!!           *"
    puts "*********************************************************************"
  end

  def get_user_input
    input = gets.chomp

    case input
      when "1"
        system "say Option 1"
      menu_1

      when "2"
        system "say Option 2"
      menu_2

      when "3"
        system "say Option 3"
      menu_3

      when "4"
        system "say Option 4"
      menu_4

      when "5"
        system "say Option 5"
      menu_5

      when "6"
        system "say Option 6"
      menu_6

      when "7"
        system "say Option 7"
      menu_7

      when "8"
        system "say Option 8"
      menu_8

      when "9"
        system "say Option 9"
      menu_9

      when "10"
        system "say Option 10"
      menu_10

      when "11"
        system "say Oh SHIT!!!"
        menu_11
      end
  end

  def menu_1
    #create theater
    puts "What is the new theater's name?"
    system "say What is the new theaters name?"
    new_theater_name = gets.chomp
    system "say #{new_theater_name}"
    puts "What is the address for #{new_theater_name}?"
    system "say What is the address for #{new_theater_name}?"
    new_theater_address = gets.chomp
    system "say #{new_theater_address}"
    puts "What is the website for #{new_theater_name}"
    system "say What is the website for #{new_theater_name}?"
    new_theater_website = gets.chomp
    system "say #{new_theater_website}"


    Theater.create(theater_name: new_theater_name, address: new_theater_address, website: new_theater_website)
    puts "**********************"
    puts "This is your new theater:"
    system "say This is your new theater"
    puts "#{new_theater_name}"
    puts "#{new_theater_address}"
    puts "#{new_theater_website}"
    puts "**********************"
    return_menu?
  end

  def menu_2
    #create Movie Entry
    puts "What is the new movie's name?"
    system "say What is the new movie's name?"
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
    return_menu?
  end

  def menu_3
    #create Showtime entry

    #get inputs from user
    puts "What theater are you entering a showtime for?"
    system "say What theater are you entering a showtime for?"
    theater_name_showtime = gets.chomp
    system "say #{theater_name_showtime}"
    puts "What movie are you entering a showtime for?"
    system "say What movie are you entering a showtime for?"
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
    return_menu?
  end

  def menu_4
    #list available movies
    all_movies = Movie.all
    all_movies.each do |movie|
      puts movie.film_name
    end
    puts "Would you like to play a movie trailer?(Y/N)"
    play_trailer_choice = gets.chomp.upcase

    case play_trailer_choice
    when "Y"
      puts "Type the name of the movie whose trailer you want to play"
      movie_trailer_choice = gets.chomp

      play_trailer = Movie.find_by(film_name: movie_trailer_choice)
      Launchy.open(play_trailer.trailer)
      return_menu?
    when "N"
      return_menu?
    end

  end

  def menu_5
    #list available theaters
    all_theaters = Theater.all
    all_theaters.each do |theater|
      puts theater.theater_name
    end
    return_menu?
  end

  def menu_6
    #list available showtimes
    all_showtimes = Showtime.all
    all_showtimes.each do |showtime|
      puts "********************************************"
      puts "
      Theater Name: #{showtime.theater_name}\n
      Film Name: #{showtime.film_name}\n
      Showtime: #{showtime.time}\n"
      puts "********************************************"
    end
    return_menu?
  end

  def menu_7
    #Update theater info
    puts "Which theater would you like to update?"
    update_theater = gets.chomp
    puts "Do you want to change the theater name (n), address (a) or website (w)"
    change_choice = gets.chomp.downcase

    case change_choice
      when "n"
        puts "What do you want to change the theater name to?"
        change_name = gets.chomp
        # binding.pry
        theater = Theater.find_by(theater_name: update_theater)

        theater.update(theater_name: change_name)
        puts "Theater name has been updated to #{theater_name}"
        return_menu?
      when "a"
        puts "What do you want to change the theater address to?"
        change_address = gets.chomp
        theater = Theater.find_by(theater_name: update_theater)
        theater.update(address: change_address)
        puts "Theater address has been updated to #{address}"
        return_menu?
      when "w"
        puts "What do you want to change the theater website to?"
        change_website = gets.chomp
        theater = Theater.find_by(theater_name: update_theater)
        theater.update(website: change_website)
        puts "Theater website has been updated to #{website}"
        return_menu?
      end
  end

  def menu_8
    #Delete Showtime
    puts "What is the Theater name for the Showtime you want to delete"
    showtime_theater_name_delete = gets.chomp
    puts "What is the Movie name for the Showtime you want to delete"
    showtime_movie_name_delete = gets.chomp
    puts "Which showtime would you like to delete?"
    showtime_delete = gets.chomp
    showtime = Showtime.where(theater_name: showtime_theater_name_delete, film_name: showtime_movie_name_delete, time: showtime_delete)
    showtime.destroy_all
    return_menu?

  end

  def menu_9
    #Delete Movie
    puts "Which movie would you like to delete?"
    movie_delete = gets.chomp
    movie = Movie.find_by(film_name: movie_delete)
    movie.destroy
    return_menu?
  end

  def menu_10
    #Delete Theater
    puts "Which theater would you like to delete?"
    theater_delete = gets.chomp
    theater = Theater.find_by(theater_name: theater_delete)
    theater.destroy
    return_menu?
  end

  def menu_11
    system "say I THOUGHT I TOLD YOU NOT TO SELECT THAT DAMN OPTION"
    system "emacs"
  end

  def return_menu?
    #ask user if he/she wants to return to main menu or not.
    puts "Do you want to return to main menu?(Y/N)"
    system "say Do you want to return to main menu?"
    return_response = gets.chomp.first.downcase

    case return_response
    when "y"
      menu
      get_user_input
      # system "ruby bin/run.rb"
    when "n"
      system "clear"
      puts "Thanks for using MovieShowtime!!!"
      system "say Thanks for using Movie Showtime"

    end
  end
end
