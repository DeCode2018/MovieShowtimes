class Movie < ActiveRecord::Base
    has_many :showtimes
    has_many :theaters, through: :showtime
end
