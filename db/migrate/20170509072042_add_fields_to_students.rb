class AddFieldsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :name, :string
    add_column :students, :registration_no, :string
    add_column :students, :branch, :string
    add_column :students, :year, :integer
  end
end
