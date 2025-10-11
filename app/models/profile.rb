class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar

  validates :nickname, presence: true, length: { maximum: 50 }
  validates :birthday, presence: true

 validate :avatar_content_type!

  def age
    return unless birthday
    t = Date.current
    a = t.year - birthday.year
    a -= 1 if t.month < birthday.month || (t.month == birthday.month && t.day < birthday.day)
    a
  end



  private

  def avatar_content_type!
    return unless avatar.attached?

    allowed = %w[image/png image/jpeg]
    return if allowed.include?(avatar.content_type)

    errors.add(:avatar, "は .png または .jpeg（.jpg 含む）だけアップロードできます。")


    if avatar.blob&.persisted?
      avatar.purge
    else
      avatar.detach
    end
  end
end
