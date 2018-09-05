module ApplicationHelper
  def collection_for_wildness
    [
      [image_tag('wild1.png') + "<p>LEVEL 1 : DUCK</p>".html_safe, 1],
      [image_tag('wild2.png') + "<p>LEVEL 2 : PENGUIN</p>".html_safe, 2],
      [image_tag('wild3.png') + "<p>LEVEL 3 : WOLF</p>".html_safe, 3],
      [image_tag('wild4.png') + "<p>LEVEL 4 : LION</p>".html_safe, 4]
    ]
  end
end
