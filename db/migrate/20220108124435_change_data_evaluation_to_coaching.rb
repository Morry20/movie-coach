class ChangeDataEvaluationToCoaching < ActiveRecord::Migration[5.2]
  def change
    change_column :coachings, :evaluation, :float
  end
end
