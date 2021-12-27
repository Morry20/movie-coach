class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def up
    change_column_null :coachings, :evaluation, true
  end

  def down
    change_column_null :coachings, :evaluation, false
  end
end
