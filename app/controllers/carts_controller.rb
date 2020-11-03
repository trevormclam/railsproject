class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
  end

  def create
    @cart = Cart.new(cart_params)

    @cart.save
    redirect_to @cart
  end

  private
    def cart_params
      params.require(:cart).permit(:name, :price)
    end
end
