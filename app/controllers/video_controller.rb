class VideoController < ApplicationController
  def index
    @videos = Video.order(:id).page params[:page]
  end
end
