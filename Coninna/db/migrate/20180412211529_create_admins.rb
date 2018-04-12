class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.User_profile :reference

      t.timestamps
    end
  end
end
