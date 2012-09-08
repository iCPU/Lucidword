module ApplicationHelper


  def textilize(text)
    CodeFormatter.new(text).to_html.html_safe unless text.blank?
  end

end
