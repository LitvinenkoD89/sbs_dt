module ApplicationHelper
  DAYS = {
    'Monday' => 'Понедельник',
    'Tuesday' => 'Вторник',
    'Wednesday' => 'Среда',
    'Thursday' => 'Четверг',
    'Friday' => 'Пятница',
    'Saturday' => 'Суббота',
    'Sunday' => 'Воскресенье'
  }
  MONTHNAMES = {
    'January' => 'января',
    'February' => 'февраля',
    'March' => 'марта',
    'April' => 'апреля',
    'May' => 'мая',
    'June' => 'июня',
    'July' => 'июля',
    'August' => 'августа',
    'September' => 'сентября',
    'October' => 'октября',
    'November' => 'ноября',
    'December' => 'декабря'
  }
  def print_event_date(date)
    "#{DAYS[date.strftime('%A')]}, #{date.day} #{MONTHNAMES[Date::MONTHNAMES[date.month]]} #{date.year}"
  end  

  def get_services
    Service.all.order(:id)
  end  
end
