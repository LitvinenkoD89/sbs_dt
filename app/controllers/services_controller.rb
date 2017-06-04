class ServicesController < ApplicationController
  def index
  end

  def show
    @services = Service.all
    @service = Service.find_by(alias_name: params[:alias_name])
  end  
end
