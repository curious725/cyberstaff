class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.string :type
      t.string :number
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
