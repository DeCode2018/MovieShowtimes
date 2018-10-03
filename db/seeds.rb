# require 'pry'
#

#theaters
Theater.create(theater_name: "AMC DC",address:"123 AMC WAY",website:"www.amc.com")
Theater.create(theater_name:"REGAL DC",address:"123 REGAL WAY",website:"www.regal.com")
Theater.create(theater_name:"MUVICO DC",address:"123 MUVICO WAY",website:"www.muvico.com")
Theater.create(theater_name:"CINEMARK DC",address:"123 CINEMARK WAY",website:"www.cinemark.com")

#movies
Movie.create(film_name:"Batman vs Superman", film_genre: "action", trailer: "https://www.youtube.com/watch?v=fis-9Zqu2Ro")
Movie.create(film_name:"Starwars: The Last Jedi", film_genre:"sci-fi", trailer:"https://www.youtube.com/watch?v=Q0CbN8sfihY")
Movie.create(film_name:"Harry Potter and the Socerer's Stone", film_genre:"sci-fi", trailer:"https://www.youtube.com/watch?v=geNlXmmIp7w")
Movie.create(film_name:"Deadpool", film_genre:"action", trailer:"https://www.youtube.com/watch?v=ONHBaC-pfsk")
Movie.create(film_name:"The Lego Movie", film_genre:"Fantasy/Action", trailer:"https://www.youtube.com/watch?v=fZ_JOBCLF-I")



#Showtime
Showtime.create(theater_name:"REGAL DC", film_name: "Batman vs Superman", time:"5:00pm")
Showtime.create(theater_name:"AMC DC", film_name: "Batman vs Superman", time:"6:00pm")
Showtime.create(theater_name:"AMC DC", film_name: "The Lego Movie", time:"7:00pm")
Showtime.create(theater_name:"CINEMARK DC", film_name:"The Lego Movie", time:"8:00pm")
Showtime.create(theater_name:"CINEMARK DC",film_name: "Starwars: The Last Jedi", time:"8:00pm")
Showtime.create(theater_name:"MUVICO DC", film_name: "Starwars: The Last Jedi", time:"9:00pm")
Showtime.create(theater_name:"MUVICO DC", film_name: "Harry Potter and the Socerer's Stone", time:"6:00pm")
Showtime.create(theater_name:"REGAL DC", film_name: "Harry Potter and the Socerer's Stone", time:"8:00pm")
