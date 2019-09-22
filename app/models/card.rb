class Card < ApplicationRecord
  belongs_to :list
  validates :title, length: { in: 1..255 }

  has_many :logs, dependent: :destroy
end
