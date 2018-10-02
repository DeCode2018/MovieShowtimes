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
Showtime.create(1,1, "Monday", "12:00pm")
Showtime.create(2,4, "Wednesday", "12:00pm")
Showtime.create(3,3, "Friday", "12:00pm")
Showtime.create(4,2, "Saturday", "12:00pm")
