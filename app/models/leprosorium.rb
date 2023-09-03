# frozen_string_literal: true

class Leprosorium < ApplicationRecord
  has_many :disclaimers
  has_many :entities

  validates :title, presence: true, uniqueness: true

  scope :ordered, -> { order(id: :desc) }

  after_create_commit { broadcast_prepend_to "leprosoria", partial: "leprosoria/leprosorium", locals: { leprosorium: self }, target: "leprosoria" }
end
