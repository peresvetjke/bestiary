# frozen_string_literal: true

FactoryBot.define do
  factory :leprosorium do
    title { FFaker::Lorem.sentence }
    disclaimers { [] }
    entities { [] }
  end
end
