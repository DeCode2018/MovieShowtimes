require 'pry'


#theaters
Theater.create("AMC","123 AMC WAY","www.amc.com")
Theater.create("REGAL","123 REGAL WAY","www.regal.com")
Theater.create("MUVICO","123 MUVICO WAY","www.muvico.com")
Theater.create("CINEMARK","123 CINEMARK WAY","www.cinemark.com")

#Movies
Movie.create("Star Wars","Sci-Fi","Mark Hamilton","www.starwars.com")
Movie.create("GET OUT","horror","Daniel Kaluuya","www.getout.com")
Movie.create("Avengers","Action","Robert Downey Jr.","www.avengers.com")
Movie.create("Black Panther","Action","Chadwick Boseman","www.blackpanther.com")


#Showtime
Showtime.create("Regal DC" "Bourne Identity", "5:00pm")
Showtime.create("AMC DC" "Mission Impossible", "7:00pm")
Showtime.create("CINEMARK DC" "Avengers: Infinity Wars", "8:00pm")
Showtime.create("MUVICO DC" "The Dreamers", "6:00pm")
