module UsersHelper
  DEFAULT_GRAVATAR_IMAGE_SIZE = 80

  # �^����ꂽ���[�U�[��Gravatar (http://gravatar.com/) ��Ԃ��B
  def gravatar_for(user, option={} )
    option[:size] ||= DEFAULT_GRAVATAR_IMAGE_SIZE
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar", size: "#{option[:size]}x#{option[:size]}")
  end
end
