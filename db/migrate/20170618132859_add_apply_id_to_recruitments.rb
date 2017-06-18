class AddApplyIdToRecruitments < ActiveRecord::Migration[5.0]
  def change
    add_column :recruitments, :apply_id, :integer
  end
end
