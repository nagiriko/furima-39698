FactoryBot.define do
  factory :order_address do
    postal_code { '123-1234' }
    prefecture_id { 3 }
    city { '東京都練馬区' }
    address { '3-4' }
    building_name { 'ラ・フォルトゥーナ' }
    phone_number { '12345678910' }
    token { "tok_abcdefghijk00000000000000000" }

  end
end