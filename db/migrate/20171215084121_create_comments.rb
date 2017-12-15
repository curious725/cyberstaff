class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :author
      t.references :employee, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
