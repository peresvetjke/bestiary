# frozen_string_literal: true

class EntityAlias < ApplicationRecord
  belongs_to :entity

  validates :text, presence: true
end
