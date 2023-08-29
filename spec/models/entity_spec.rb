require 'rails_helper'

RSpec.describe Entity, type: :model do
  subject { build(:entity) }

  let(:leprosorium) { build(:leprosorium) }
  let(:disclaimer) { build(:disclaimer) }

  it { is_expected.to be_valid }
end
