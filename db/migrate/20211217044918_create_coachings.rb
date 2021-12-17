class CreateCoachings < ActiveRecord::Migration[5.2]
  def change
    create_table :coachings do |t|
      t.integer :movie_id, null: false
      t.integer :evaluation, null: false
      t.string :comment

      t.timestamps
    end
  end
end
