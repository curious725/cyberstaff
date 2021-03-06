FactoryBot.define do
  factory :phase_category do
    sequence(:name) { |n| "PhaseCategory#{n}" }

    factory :phase_category_with_phases do
      transient do
        phases_count 3
      end

      after(:create) do |phase_category, evaluator|
        create_list(
          :phase, evaluator.phases_count, phase_category: phase_category
        )
      end
    end
  end
end
