class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      redirect_to @cart
    else
      render 'new'
    end
  end

  private
    def cart_params
      params.require(:cart).permit(:name, :price, :count)
    end
end
