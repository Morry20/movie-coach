class AddMovieIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :movie_id, :integer
    
    remove_column :messages, :matching_id
  end
end
