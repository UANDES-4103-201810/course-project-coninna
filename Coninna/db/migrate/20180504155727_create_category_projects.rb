class CreateCategoryProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :category_projects do |t|
      t.references :category, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
