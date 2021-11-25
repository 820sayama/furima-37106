require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.build(:item,user_id:@user.id)
  end
  describe "商品の出品" do
    context '商品の出品ができない時' do  
it "productが空では登録できない" do
  @item.product = ''
  @item.valid?
  expect(@item.errors.full_messages).to include("Product can't be blank")
end

it "priceが空では登録できない" do
  @item.price = ''
  @item.valid?
  expect(@item.errors.full_messages).to include("Price can't be blank")
end
it "explanationが空では登録できない" do
  @item.explanation = ''
  @item.valid?
  expect(@item.errors.full_messages).to include("Explanation can't be blank")
end
it "imageが空では登録できない" do
  @item.image = nil
  @item.valid?
  expect(@item.errors.full_messages).to include("Image can't be blank")  
end
it "category_idがid1だと登録できない" do
  @item.category_id = 1
  @item.valid?
  expect(@item.errors.full_messages).to include("Category must be other than 1") 
end
it "delivery_fee_idがid1だと登録できない" do
  @item.delivery_fee_id = 1
  @item.valid?
  expect(@item.errors.full_messages).to include("Delivery fee must be other than 1") 
end
it "delivery_day_idがid1だと登録できない" do
  @item.delivery_day_id = 1
  @item.valid?
  expect(@item.errors.full_messages).to include("Delivery day must be other than 1")   
end 
it "condition_idがid1だと登録できない" do
  @item.condition_id = 1
  @item.valid?
  expect(@item.errors.full_messages).to include("Condition must be other than 1")  
end 
it 'ユーザーが紐付いていなければ投稿できない' do
  @item.user = nil
  @item.valid?
  expect(@item.errors.full_messages).to include('User must exist')
end
end
context '商品の出品ができる時' do
  it "全ての項目が入力されていれば登録できる" do  
    expect(@item).to be_valid
  end
  it "商品価格が299円以下では出品できない" do
@item.price = 299
@item.valid?
expect(@item.errors.full_messages).to include('Price is invalid')
 end
 it "価格の範囲が9,999,999円を超えると出品できない" do
  @item.price = 10_000_000
  @item.valid?
  expect(@item.errors.full_messages).to include("Price is invalid")
end
 it "全角数字では出品できない" do
  @item.price = "１００００"
  @item.valid?
  expect(@item.errors.full_messages).to include("Price is invalid")
end
 end
end
end
#商品価格が10_000_000円以上では出品できない
#商品価格が半角英数字以外では出品できない




