FactoryBot.define do
  factory :transaction do
    result { "MyString" }
    credit_card_expiration_date { "2018-11-27 21:27:18" }
    credit_card_number { "MyString" }
    invoice { nil }
  end
end
