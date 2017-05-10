class CreateIssus < ActiveRecord::Migration[5.0]
  def change
    create_table :issus do |t|
      t.string :sid
      t.integer :allbk_id
      t.date :issue_date
      t.date :return_date

      t.timestamps
    end
  end
end
