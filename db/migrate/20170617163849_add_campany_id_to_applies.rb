class AddCampanyIdToApplies < ActiveRecord::Migration[5.0]
  def change
    add_column :applies, :campany_id, :integer
  end
end
