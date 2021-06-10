class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order('created_at DESC')
  end

  def new
    @order = current_user.orders.build
    @product = Product.find(params[:product_id])
    @order.order_products.build(product: @product) #userなくてもできるのですか？どれか一つカラムのあたい取ればよし？
  end
  
  def create
    if Order.create(order_params)
      redirect_to products_path, notice: '注文が完了しました'
    else
      render :new
    end
  end

  private
  
  def order_params
    params.require(:order).permit(:user_id, order_products_attributes: [:amount, :product_id, :user_id, :order_id])
  end
end
