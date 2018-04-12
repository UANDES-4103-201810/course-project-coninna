class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :id, primary_key :true
      t.reference :user_profile, foreign_key :true
      

      t.timestamps
    end
  end
end
