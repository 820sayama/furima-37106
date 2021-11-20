FactoryBot.define do
  factory :user do
    nickname {"sayama"}
    email {Faker::Internet.free_email}
    password {"000000"}
    password_confirmation {"000000"}
    first_name {"佐山"}
    last_name {"源"}
    first_name_kana {"サヤマ"} 
    last_name_kana {"ハジメ"}
   birthday_day {"1999-09-14"}
  end
end