class CreateGcals < ActiveRecord::Migration[5.0]
  def change
    create_table :gcals do |t|

      t.timestamps
    end
  end
end
