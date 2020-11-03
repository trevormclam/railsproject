class SearchController < ApplicationController
  def index
    @articles = Article.all.where("lower(title) LIKE :search", search: params[:search])
  end

end
