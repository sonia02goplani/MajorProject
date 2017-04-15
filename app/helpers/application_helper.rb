module ApplicationHelper
  def get_country_names
    ISO3166::Country.all.map{|c| [c.name, c.name]}
  end
end
