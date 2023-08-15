FactoryBot.define do
  factory :user do
    
    nickname { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { "a1" + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    last_name { "田中" }
    first_name { "太郎" }
    last_name_kana { "タナカ" }
    first_name_kana { "タロウ" }
    birthdate { Faker::Date.between(from: 50.years.ago, to: 18.years.ago) }
  end
end