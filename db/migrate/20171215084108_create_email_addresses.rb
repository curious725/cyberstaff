class CreateEmailAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :email_addresses do |t|
      t.string :type
      t.string :email
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
