class CartItemsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.save
      redirect_to cart_path(@cart_item.cart_id)
    else
      redirect_to products_path
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path(@cart_item.cart_id), notice: 'Product was successfully removed from the cart.'
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:qty, :product_id).merge(cart_id: 1) # cart_id をマージする
  end
end

