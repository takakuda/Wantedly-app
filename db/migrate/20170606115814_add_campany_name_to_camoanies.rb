class AddCampanyNameToCampanies < ActiveRecord::Migration[5.0]
  def change
    add_column :campanies, :campany_name, :string
  end
end
