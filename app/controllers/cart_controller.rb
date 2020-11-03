class CartController < ApplicationController
  def index
    @item = params[:id]
  end
end
