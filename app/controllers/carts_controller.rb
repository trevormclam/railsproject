class CartsController < ApplicationController
  def index
    @cart = Cart.all
  end

  def new
    @article = Article.find(params[:id])
    @cart = Cart.new(:articleid => @article.id, :item => @article.title, :price => @article.text, :image => @article.image)
  end

  def edit
    @cart = Cart.find(params[:id])
    @article = Article.find(@cart.articleid)
  end

  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      redirect_to carts_path
    else
      render 'new'
    end
  end

  def update
    @cart = Cart.find(params[:id])

    if @cart.update(cart_params)
      redirect_to carts_path
    else
      render 'edit'
    end
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to carts_path
  end

  private
    def cart_params
      params.require(:cart).permit(:articleid, :item, :price, :image, :quantity)
    end
end
