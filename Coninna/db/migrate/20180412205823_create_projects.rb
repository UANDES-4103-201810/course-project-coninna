class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :category
      t.text :description
      t.integer :days_to_go
      t.integer :goal_amount
      t.string :title
      t.string :descriptive_page
      t.references :user, foreign_key: true
      t.integer :actual_money

      t.timestamps
    end
  end
end
