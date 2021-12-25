class RemoveMovieIdFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :movie_id, :string
  end
end
