# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Phase, type: :model do
  describe '.with_category_name' do
    before(:all) do
      Timecop.freeze(Time.now)
      create_list(:phase_category_with_phases, 4)
    end

    it 'should return correct array' do
      expected_array = []
      Phase.joins(:phase_category).select('phases.id, phases.name,
        phases.created_at, phase_categories.name as category_name')
           .map do |phase|
             expected_array.push(
               id: phase.id, name: phase.name, created_at: phase.created_at,
               category_name: phase.category_name
             )
           end
      expect(Phase.with_category_name).to match_array(expected_array)
    end

    it 'should not return phase_category without phases' do
      phase_category_without_phases = create(
        :phase_category, name: 'PhaseCategoryOther'
      )
      expect(Phase.with_category_name).not_to include(
        phase_category_without_phases.as_json
      )
    end

    it 'should send 1 sql query to db' do
      expect { Phase.with_category_name }.not_to exceed_query_limit(1)
    end

    after(:all) do
      Timecop.return
    end
  end
end
