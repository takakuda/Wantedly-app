class CreateCampanyApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :campany_applies do |t|
      t.integer        :campany_id
      t.integer        :apply_id
      t.timestamps
    end
  end
end
