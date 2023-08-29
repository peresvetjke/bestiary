class Disclaimer < ApplicationRecord
  belongs_to :leprosorium

  validates :text, presence: true
end
