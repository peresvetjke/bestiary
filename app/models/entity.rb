# frozen_string_literal: true

class Entity < ApplicationRecord
  belongs_to :leprosorium
  belongs_to :disclaimer
end
