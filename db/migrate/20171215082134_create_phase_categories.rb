class CreatePhaseCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :phase_categories do |t|
      t.text :name

      t.timestamps
    end
  end
end
