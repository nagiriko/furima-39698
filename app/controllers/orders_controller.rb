class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order
  before_action :move_to_index

  def index
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render 'index', status: :unprocessable_entity
    end
  end


  
  private

  def order_params
    params.require(:order_address).permit(:postal_code, :prefecture_id, :city, :address, :building_name, :phone_number, :order_id).merge(user_id: current_user.id, item_id: params[:item_id],)
  end
end

def set_order
  @item = Item.find(params[:item_id])
end

def move_to_index
  redirect_to root_path if current_user.id == @item.user.id || @item.order.present?
end