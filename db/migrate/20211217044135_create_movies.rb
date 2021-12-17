class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.integer :matching_id, null: false
      t.string :movie_id, null: false
      t.string :request, null: false

      t.timestamps
    end
  end
end
