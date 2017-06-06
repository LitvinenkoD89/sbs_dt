class VideoController < ApplicationController
  def index
    @video = Video.order(:id).page params[:page]
  end
end
