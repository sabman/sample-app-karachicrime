module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def logo
    image_tag "logo.png", alt: base_title, class: "round"
  end

private
  def base_title
    "KarachiCrime"
  end
end
