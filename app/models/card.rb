class Card < ApplicationRecord
  belongs_to :list
  validates :title, length: { in: 1..255 }

  has_many :work_times, dependent: :destroy
end
