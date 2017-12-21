class CreatePhasesAndVacancies < ActiveRecord::Migration[5.1]
  def change
    create_table :phases_vacancies, id: false do |t|
      t.belongs_to :phase, index: true
      t.belongs_to :vacancy, index: true
    end
  end
end
