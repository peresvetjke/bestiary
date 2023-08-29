FactoryBot.define do
  factory :leprosorium do
    title { FFaker::Lorem.sentence }
    disclaimers { [] }
    entities { [] }
  end
end
