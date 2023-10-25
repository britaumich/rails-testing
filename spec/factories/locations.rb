FactoryBot.define do
  factory :location do
    name { Faker::Name.name }
    line_1 { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip_code }
  end
end
