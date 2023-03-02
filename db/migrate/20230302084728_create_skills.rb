class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :name, null:false
      t.string :category
      t.integer :project_id
      t.integer :user_id
    end
  end
end
