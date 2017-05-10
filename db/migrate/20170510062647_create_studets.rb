class CreateStudets < ActiveRecord::Migration[5.0]
  def change
    create_table :studets, id: false, primary_key: :sid  do |t|
      t.string :sid
      t.string :name
      t.date :dob
      t.integer :year
      t.string :branch

      t.timestamps
    end
  end
end
