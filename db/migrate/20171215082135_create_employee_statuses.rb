class CreateEmployeeStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_statuses do |t|
      t.text :name
      t.string :description

      t.timestamps
    end
  end
end
