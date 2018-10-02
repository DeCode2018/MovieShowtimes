class CreateMovieTable < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :film_name
      t.string :film_genre
      t.string :trailer
    end
  end
end
