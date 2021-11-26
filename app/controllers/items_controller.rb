class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:create,:new,:edit]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @item = Item.includes(:user).order("created_at DESC")
  end  

  def show
  end

  def destroy
    if @item.user_id == current_user.id
      @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

def update
  @item.update(items_params)
    if @item.valid?
      redirect_to item_path(items_params)
    else
      render :edit
    end
  end

  def edit
    if @item.user_id == current_user.id && @item.order.nil?
    else
      redirect_to root_path
    end
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
  def set_item
    @item = Item.find(params[:id])
  end
end
