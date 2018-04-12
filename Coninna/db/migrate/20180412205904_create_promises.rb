class CreatePromises < ActiveRecord::Migration[5.0]
  def change
    create_table :promises do |t|
      t.date :delivery_date
      t.text :description
      t.integer :amount

      t.timestamps
    end
  end
end
