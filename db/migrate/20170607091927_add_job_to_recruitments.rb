class AddJobToRecruitments < ActiveRecord::Migration[5.0]
  def change
    add_column :recruitments, :job, :string
  end
end
