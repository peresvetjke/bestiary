# frozen_string_literal: true

class Leprosorium < ApplicationRecord
  has_many :disclaimers
  has_many :entities

  validates :title, presence: true, uniqueness: true

  scope :ordered, -> { order(id: :desc) }

  after_create_commit -> { broadcast_prepend_later_to "leprosoria" }
  after_update_commit -> { broadcast_replace_later_to "leprosoria" }
  after_destroy_commit -> { broadcast_remove_to "leprosoria" }
end
