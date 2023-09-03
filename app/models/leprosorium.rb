# frozen_string_literal: true

class Leprosorium < ApplicationRecord
  has_many :disclaimers
  has_many :entities

  validates :title, presence: true, uniqueness: true

  scope :ordered, -> { order(id: :desc) }

  broadcasts_to ->(_leprosoria) { 'leprosoria' }, inserts_by: :prepend
end
