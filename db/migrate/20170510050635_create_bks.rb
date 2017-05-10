class CreateBks < ActiveRecord::Migration[5.0]
  def change
    create_table :bks, id: false, primary_key: :isbn do |t|
      t.string :isbn
      t.string :author
      t.string :title
      t.string :publication
      t.integer :copies
      t.integer :available
      t.string :subject

      t.timestamps
    end
  end
end
