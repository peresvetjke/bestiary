class Leprosorium < ApplicationRecord
  has_many :disclaimers
  has_many :entities

  validates :title, presence: true, uniqueness: true
end
