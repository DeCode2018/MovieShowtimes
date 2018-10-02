class CreateShowtimeTable < ActiveRecord::Migration[5.0]
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.integer :theater_id
      t.string :day
      t.string :time
    end
  end
end
