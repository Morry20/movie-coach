class AddMatchingIdColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :matching_id, :integer
  end
end
