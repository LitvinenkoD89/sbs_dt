class GalleryController < ApplicationController
  def index
    @photos = ServicePhoto.order(:id).page params[:page]
    @categories = Category.all

    if params['category_ids'].blank?
      @photos = Photo.all.order("created_at DESC").page params[:page]
      @category_ids = [-1]
    else
      photos_ids = []
      cat_ids = params['category_ids'].map(&:to_i)
      Photo.find_each do |p|
        photos_ids.push(p.id) unless (p.category_ids & cat_ids).blank?
      end  
      @photos = Photo.where(id: photos_ids).page params[:page]
      @category_ids = params['category_ids']
    end  
  end
end
