class AddOutstandingToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :outstanding, :boolean
  end
end
