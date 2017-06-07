class HomeController < ApplicationController
  def index
    @past_events = Event.past.first(5)
    @future_events = Event.future.first(3)
    @events_with_articles = Event.joins(:notepads).first(2)
  end

  def about_us
    @members = Member.all
  end
  
  def contacts
  end  

  def services
  end

  def reviews
    @awards = Award.all
  end

  def gallery
    @photos = Photos.all
  end  

  def video
  end  

  def blog
  end  
end
