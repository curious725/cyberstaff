class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.references :phase, foreign_key: true

      t.timestamps
    end
  end
end
