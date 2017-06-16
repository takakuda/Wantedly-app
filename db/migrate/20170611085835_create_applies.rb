class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.integer         :user_id
      t.integer         :recruitment_id
      t.timestamps
    end
  end
end
