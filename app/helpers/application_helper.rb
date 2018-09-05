module ApplicationHelper
  def collection_for_wildness
    [
      [image_tag('wild1.png') + "<p>lorem ipsum 1</p>".html_safe, 1],
      [image_tag('wild2.png') + "<p>lorem ipsum 2</p>".html_safe, 2],
      [image_tag('wild3.png') + "<p>lorem ipsum 3</p>".html_safe, 3],
      [image_tag('wild4.png') + "<p>lorem ipsum 4</p>".html_safe, 4]
    ]
  end
end
