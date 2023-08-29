# frozen_string_literal: true

FactoryBot.define do
  factory :disclaimer do
    text { FFaker::Lorem.sentence }
    leprosorium { build(:leprosorium) }
  end
end
