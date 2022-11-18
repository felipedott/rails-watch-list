class Review < ApplicationRecord
  belongs_to :list

  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5 }
  validates :comment, presence: true
end
