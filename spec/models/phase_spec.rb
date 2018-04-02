# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Phase, type: :model do
  it 'with_category_name method should return correct array' do
    Timecop.freeze(Time.now)
    phase_categories = create_list(:phase_category_with_phases, 4)
    expected_array = []
    phase_categories.each do |phase_category|
      phase_category.phases.each do |phase|
        expected_array.push(
          id: phase.id, name: phase.name, created_at: phase.created_at,
          category_name: phase_category.name
        )
      end
    end
    expect(Phase.with_category_name).to match_array(expected_array)
    Timecop.return
  end
end
