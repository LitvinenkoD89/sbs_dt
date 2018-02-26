class BlogController < ApplicationController
  
  def index
    @articles = Article.order(updated_at: :desc).where(published: 1).page params[:page]
  end
end
