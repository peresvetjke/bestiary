FactoryBot.define do
  factory :entity do
    leprosorium { build(:leprosorium) }
    disclaimer { build(:disclaimer) }
  end
end
