class OrdersController < ApplicationController
  before_action :set_user_and_order_values, only: [:new, :create]
  def new
    @product = Product.find(params[:product_id])
    @order.order_products.build(product_id: @product.id, amount: 1, user_id: @user.id, order_id: @order.id)
  end
  
  def create
    if Order.create(order_params)
      redirect_to products_path, notice: "注文が完了しました"
    else
      render :new
    end
  end

  private
  
  def order_params
    params.require(:order).permit(:user_id, order_products_attributes: [:amount, :product_id, :user_id, :order_id])
  end

  def set_user_and_order_values
    @user = current_user
    @order = @user.orders.build
  end
end
