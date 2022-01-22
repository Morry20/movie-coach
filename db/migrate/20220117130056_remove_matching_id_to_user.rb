class RemoveMatchingIdToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :matching_id, :integer
  end
end
