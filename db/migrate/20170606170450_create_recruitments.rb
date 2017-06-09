class CreateRecruitments < ActiveRecord::Migration[5.0]
  def change
    create_table :recruitments do |t|
      t.string     :title
      t.text       :text
      t.binary     :image
      t.integer    :recruitment_id
      t.timestamps
    end
  end
end
