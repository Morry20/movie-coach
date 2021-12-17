class CreateMatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :matchings do |t|
      
      t.integer :user_id, null: false
      t.integer :coach_id, null: false
      t.integer :approval, null: false, default: 0
      t.string :goal, null: false
      t.string :how, null: false
      t.string :comment, null: false
      t.string :reply

      t.timestamps
    end
  end
end
