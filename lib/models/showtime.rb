class Showtime < ActiveRecord::Base
    belongs_to :movies
    belongs_to :theaters
end
