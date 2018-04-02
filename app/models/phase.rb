class Phase < ApplicationRecord
  belongs_to :phase_category
  has_and_belongs_to_many :vacancies

  def self.with_category_name
    joins(:phase_category)
      .select("phases.id, phases.name, phases.created_at,
        phase_categories.name as category_name")
      .map do |phase|
        { id: phase.id, name: phase.name, created_at: phase.created_at,
          category_name: phase.category_name }
      end
  end
end
