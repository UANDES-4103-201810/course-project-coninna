class CreateWishlists < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlists do |t|
      t.primarykey :id
      t.project :reference

      t.timestamps
    end
  end
end
