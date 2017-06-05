class GalleryController < ApplicationController
  def index
    @photos = ServicePhoto.order(:id).page params[:page]
  end
end
