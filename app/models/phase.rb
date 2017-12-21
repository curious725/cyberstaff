class Phase < ApplicationRecord
  belongs_to :phase_category
  has_and_belongs_to_many :vacancies
end
