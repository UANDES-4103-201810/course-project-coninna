class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true
      t.references :admin, foreign_key: true
      t.string :name
      t.string :user_name
      t.integer :phone
      t.string :mail
      t.string :role
      t.date :dob
      t.text :credit_card_info
      t.string :country
      t.string :password
      t.text :address
      t.datetime :last_access
      

      t.timestamps
    end
  end
end
