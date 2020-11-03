class AdminController < ApplicationController
http_basic_authenticate_with name: "ddd", password: "ssss"

  def index
    @articles = Article.all
  end


end
