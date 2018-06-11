class AddProjectToFund < ActiveRecord::Migration[5.0]
  def change
    add_reference :funds, :project, foreign_key: true
  end
end
