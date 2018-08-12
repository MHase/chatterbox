module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
              opts
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "ChatterBox"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
