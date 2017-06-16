class AddJobTypeToRecruitments < ActiveRecord::Migration[5.0]
  def change
    add_column :recruitments, :job_type, :string
  end
end
