class AddCampanyIdToRecruitments < ActiveRecord::Migration[5.0]
  def change
    add_column :recruitments, :campany_id, :integer
  end
end
