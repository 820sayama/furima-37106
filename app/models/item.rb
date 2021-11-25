class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  belongs_to :category
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :delivery_day
  belongs_to :condition


 validates :image, presence: true
 validates :product, presence: true
 validates :price, presence: true,numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 1000000, message: "is invalid"}
 validates :explanation, presence: true
 validates :category_id, numericality: { other_than: 1 } 
 validates :delivery_fee_id, numericality: { other_than: 1 } 
 validates :prefecture_id, numericality: { other_than: 1 } 
 validates :delivery_day_id, numericality: { other_than: 1 } 
 validates :condition_id, numericality: { other_than: 1 } 
end
