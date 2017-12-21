class Vacancy < ApplicationRecord
  has_and_belongs_to_many :phases
end
