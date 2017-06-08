class CreateSkillsCategoriesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :skills_categories do |t|
      t.integer :category_id
      t.integer :skill_id
    end
    add_index :skills_categories, :category_id
    add_index :skills_categories, :skill_id
  end
end
