class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find_by(alias_name: params[:alias_name])
  end  
end
