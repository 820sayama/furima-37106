class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:create,:new]
  def index
    @item = Item.includes(:user).order("created_at DESC")
  end  

  def show
    @item = Item.find(params[:id])

  end

  def new
    @item = Item.new
    
  end  
  def create
    @item = Item.new(items_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end
private

  def items_params
    params.require(:item).permit(:product, :image,:price,:explanation,:category_id,:delivery_fee_id, :prefecture_id,:delivery_day_id,:condition_id).merge(user_id: current_user.id)
  end
end
