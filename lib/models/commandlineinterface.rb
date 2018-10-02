class CommandLineInterface


  def greet
    puts "Welcome to MovieShowtime!!!"
  end

  def menu
    puts "******************************"
    puts "Enter the menu # to select"
    puts "1. Create Showtime"
    puts "2. Add Movie"
    puts "3. Add Theater"
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
      menu_one

      when "2"
      menu_two

      when "3"
      menu_three

      when "4"
      menu_four

      when "5"
      menu_five

      when "6"
      menu_six

      when "7"
      menu_seven

      when "8"
      menu_eight

      when "9"
      menu_nine

      when "10"
      menu_ten

    end
  end
end
