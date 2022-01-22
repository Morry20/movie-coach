class ChangeDataEvaluationToCoachEvaluations < ActiveRecord::Migration[5.2]
  def change
    change_column :coach_evaluations, :evaluation, :float
  end
end
