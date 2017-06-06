class BlogController < ApplicationController
  def index
    @articles = Article.order(:created_at).page params[:page]
  end
end
