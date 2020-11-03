class CartController < ApplicationController
  def index
    if(params[:id])
      @article = Article.find(params[:id])
      @cart = Cart.new(:id => @article.id, :item => @article.title, :price => @article.text)
      @cart.save
    end

    @cart = Cart.all

  end

end
