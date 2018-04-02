# frozen_string_literal: true

FactoryBot.define do
  factory :phase do
    sequence(:name) { |n| "Phase#{n}" }
    created_at Time.now
    phase_category
  end
end
