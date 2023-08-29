# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Disclaimer, type: :model do
  subject { build(:disclaimer, leprosorium: leprosorium, text: text) }

  let(:leprosorium) { build(:leprosorium) }
  let(:text) { 'признан иностранным агентом в РФ' }

  it { is_expected.to be_valid }

  describe 'validations' do
    context 'without text' do
      let(:text) { nil }

      it { is_expected.not_to be_valid }
    end
  end
end
