FactoryBot.define do
  factory :item do
    name { "Example Item" }
    description { "This is an example item." }
    category_id { 2 }
    condition_id{ 2 }
    shipping_fee_id{ 2 }
    prefecture_id{ 2 }
    shipping_duration_id{ 2 }
    price { 1000 } 
    association :user 
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end