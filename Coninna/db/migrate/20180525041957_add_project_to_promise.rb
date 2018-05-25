class AddProjectToPromise < ActiveRecord::Migration[5.0]
  def change
    add_reference :promises, :project, foreign_key: true
  end
end
