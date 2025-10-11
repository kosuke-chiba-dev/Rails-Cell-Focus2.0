class Card < ApplicationRecord
  belongs_to :board
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_one_attached :thumbnail

  validates :title, presence: true, length: {
              minimum: 1,
              maximum: 20
            }
  validates :description, presence: true, length: {
              minimum: 1,
              maximum: 300
            }
validate :thumbnail_content_type!
private

  def thumbnail_content_type!
    return unless thumbnail.attached?

    allowed = %w[image/png image/jpeg]
    unless thumbnail.content_type.in?(allowed)
      errors.add(:thumbnail, "は .png または .jpeg だけアップロードできます。")
      thumbnail.purge
    end
  end
end
