class CreateSkillTable < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.string :name
      t.timestamps null: false
    end
    add_index :skills, :user_id
  end
end
