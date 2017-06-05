module ApplicationHelper
  def print_event_date(date)
    "#{date.strftime('%A')}, #{date.day} #{Date::MONTHNAMES[date.month]} #{date.year}"
  end  

  def get_services
    Service.all.order(:id)
  end  
end
