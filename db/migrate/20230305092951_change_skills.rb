class ChangeSkills < ActiveRecord::Migration[6.1]
  def change
    change_table :skills do |t|
      t.remove :project_id
    end
  end
end
