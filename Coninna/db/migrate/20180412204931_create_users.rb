class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.integer :phone
      t.date :dob
      t.string :role
      t.text :credit_card_info
      t.string :country
      t.string :password
      t.text :address
      t.datetime :last_access

      t.timestamps
    end
  end
end
