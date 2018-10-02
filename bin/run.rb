require_relative '../config/environment'

system "clear"
cli = CommandLineInterface.new

cli.greet
cli.menu
cli.get_user_input
puts "BYE CRUEL WORLD"
