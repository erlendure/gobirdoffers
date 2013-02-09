module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    url = request.url	
    base_title = "Iceland Offers"
	if url["icelandoffers.com"].nil? then base_title = "Reykjavik Offers" end
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  #Returns logo
  def decide_logo()
    url = request.url
    logo = "icelandoffers.gif"
	if url["icelandoffers.com"].nil? then logo = "reykjavikoffers.gif" end
	logo
  end
end
