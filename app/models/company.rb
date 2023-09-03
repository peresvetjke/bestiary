# frozen_string_literal: true

class Company < ApplicationRecord
  validates :title, presence: true
end
