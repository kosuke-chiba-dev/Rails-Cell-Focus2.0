class Board < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy
  validates :name, presence: true, length: {
              minimum: 1,
              maximum: 20,
            }
  validates :description, presence: true, length: {
              minimum: 1,
              maximum: 300,
            }
end
