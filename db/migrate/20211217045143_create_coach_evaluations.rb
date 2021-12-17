class CreateCoachEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :coach_evaluations do |t|

      t.integer :matching_id, null: false
      t.integer :evaluation, null: false
      t.string :title, null: false
      t.string :reason, null: false

      t.timestamps
    end
  end
end
