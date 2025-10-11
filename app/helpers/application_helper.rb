module ApplicationHelper
    def avatar_for(user, size: 40, alt: "avatar")
    if user&.profile&.avatar&.attached?
      image_tag user.profile.avatar.variant(resize_to_limit: [size, size]).processed,
                alt: (user.profile.nickname.presence || alt)
    else
      image_tag "default-avatar.png", size: "#{size}x#{size}", alt: alt
    end
  end
end
