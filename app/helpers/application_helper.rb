module ApplicationHelper
  def markdown(content)
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true).render(content).html_safe
  end
end
