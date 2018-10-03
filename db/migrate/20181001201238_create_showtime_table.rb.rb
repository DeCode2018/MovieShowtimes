class CreateShowtimeTable < ActiveRecord::Migration[5.0]
  def change
    create_table :showtimes do |t|
      t.string :theater_name
      t.string :film_name  
      t.string :time
    end
  end
end
