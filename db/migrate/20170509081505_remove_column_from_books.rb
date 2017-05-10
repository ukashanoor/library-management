class RemoveColumnFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :issue, :boolean
    remove_column :books, :id, :integer
  end
end
