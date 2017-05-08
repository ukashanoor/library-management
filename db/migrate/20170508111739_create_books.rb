class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :author
      t.string :title
      t.string :subject
      t.string :publication
      t.integer :no_of_copies
      t.integer :available
      t.boolean :issue

      t.timestamps
    end
  end
end
