class CreateTheaterTable < ActiveRecord::Migration[5.0]
  def change
    create_table :theaters do |t|
      t.string :theater_name
      t.string :address
      t.string :website
    end
  end
end
