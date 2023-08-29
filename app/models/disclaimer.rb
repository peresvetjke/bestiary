# frozen_string_literal: true

class Disclaimer < ApplicationRecord
  belongs_to :leprosorium

  validates :text, presence: true
end
