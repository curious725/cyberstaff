class CreatePhases < ActiveRecord::Migration[5.1]
  def change
    create_table :phases do |t|
      t.text :name
      t.references :phase_category, foreign_key: true

      t.timestamps
    end
  end
end
