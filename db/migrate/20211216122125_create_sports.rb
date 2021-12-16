class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|

      t.string :image_id, null: false
      t.string :name,     null: false


      t.timestamps
    end
  end
end
