class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :category
      t.text :description
      t.integer :days_to_go
      t.integer :goal_amount
      t.integer :actual_money
      t.string :descriptive_page
      t.references :user, foreign_key: true
      

      t.timestamps
    end
  end
end
