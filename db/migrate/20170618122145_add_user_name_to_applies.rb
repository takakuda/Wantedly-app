class AddUserNameToApplies < ActiveRecord::Migration[5.0]
  def change
    add_column :applies, :user_name, :string
  end
end
