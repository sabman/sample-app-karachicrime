module ApplicationHelper
  def title
    base_title = "KarachiCrime"
    variable_title = @title || action_name.capitalize
    [base_title, variable_title].join(' | ')
  end
end
