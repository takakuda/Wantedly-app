class AddCampanyNameToRecruitments < ActiveRecord::Migration[5.0]
  def change
    add_column :recruitments, :campany_name, :string
  end
end
