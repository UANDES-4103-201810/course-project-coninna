class AddApprovedToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :approves, :boolean
  end
end
