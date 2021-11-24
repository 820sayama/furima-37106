FactoryBot.define do
  factory :item do
    
    product {"ada"}
    price {42342}
    explanation {"as"}
    category_id {2}
    delivery_fee_id {2}
    prefecture_id {2}
    delivery_day_id {2}
    condition_id {2}
    after(:build) do |item|
      item.image.attach(io: File.open('public/image/arrow_top(1).png'), filename: 'arrow_top(1).png')
    end                                           
end
end