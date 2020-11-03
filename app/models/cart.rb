class Cart < ApplicationRecord
  def add
    @article = Article.find(params[:id])
    @cart = Cart.new(:id => @article.id, :item => @article.title, :price => @article.text)
    @cart.save
  end
end
