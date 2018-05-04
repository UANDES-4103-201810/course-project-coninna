class CreateFunds < ActiveRecord::Migration[5.0]
  def change
    create_table :funds do |t|
      t.string :state
      t.references :user, foreign_key: true
      t.references :promise, foreign_key: true

      t.timestamps
    end
  end
end
