FactoryBot.define do
  factory :entity_alias do
    entity { build(:entity) }
    text { FFaker::Lorem.sentence }
  end
end
