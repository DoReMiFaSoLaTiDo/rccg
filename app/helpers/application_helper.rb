module ApplicationHelper
  def full_title(title=" ")
    title.nil? ? "RCCG Overcomers House | Torquay" : title

  end

#  def site_logo
#     <%= cl_image_tag("rccg_dark_back_logo_olov3e.png", :width=>20, :crop=>"scale") %>
#  end

  def site_name
    "Overcomers House"
  end

  def site_url
    if Rails.env.production?
      "http://www.rccgovercomershouse.co.uk/"
    else
      "http://localhost:3000"
    end
  end

  def meta_author
    "Michael Fashola"
  end

  def meta_description
    "Redeemed Christian Church of GOD Overcomers House Torquay United Kingdom (UK)"
  end

  def meta_keywords
    "Redeemed Christian Church of God, RCCG, Overcomers House, Overcomers, House, Torquay, UK, Bible, Believing, Church"
  end

  #returns the full title on a per page basis
  def full_title(page_title)
    site_name if page_title.empty?
  end

  def uk_date_time(get_date)
    DateTime.parse(get_date.to_s).strftime("%a, %d %b %Y %I:%M %p")
  end

end
