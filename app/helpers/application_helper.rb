# app/helpers/application_helper.rb

module ApplicationHelper
  def highlight_recent(created_at)
    'table-warning' if created_at > 1.week.ago
  end
end

