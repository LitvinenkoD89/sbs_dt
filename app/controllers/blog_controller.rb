class BlogController < ApplicationController
  
  def index
    @articles = Article.order(:created_at).where(published: 1).page params[:page]
  end
end
