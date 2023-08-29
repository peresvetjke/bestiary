# frozen_string_literal: true

FactoryBot.define do
  factory :entity do
    leprosorium { build(:leprosorium) }
    disclaimer { build(:disclaimer) }
  end
end
