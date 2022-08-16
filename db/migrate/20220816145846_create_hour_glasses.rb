class CreateHourGlasses < ActiveRecord::Migration[7.0]
  def change
    create_table :hour_glasses do |t|

      t.timestamps
    end
  end
end
