# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Leprosorium, type: :model do
  subject { build(:leprosorium, entities: entities, disclaimers: disclaimers) }

  let(:entities) { build_list(:entity, 2) }
  let(:disclaimers) { entities.map(&:disclaimer) }

  it { is_expected.to be_valid }
end
