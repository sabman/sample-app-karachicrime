module ApplicationHelper
  def base_title
    'KarachiCrime'
  end

  def title
    variable_title = @title || action_name.capitalize
    [base_title, variable_title].join(' | ')
  end

  def logo
    image_tag "logo.png", alt: base_title, class: "round"
  end
end
