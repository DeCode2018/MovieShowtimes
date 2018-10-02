class Theater < ActiveRecord::Base
    has_many :showtimes
    has_many :movies, through: :showtime
end
