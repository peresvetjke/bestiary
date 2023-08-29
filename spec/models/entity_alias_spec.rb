require 'rails_helper'

RSpec.describe EntityAlias, type: :model do
  subject { build(:entity_alias, text: text) }

  let(:text) { 'ИГИЛ' }

  it { is_expected.to be_valid }

  describe 'validations' do
    context 'without text' do
      let(:text) { '' }

      it { is_expected.not_to be_valid }
    end
  end
end
