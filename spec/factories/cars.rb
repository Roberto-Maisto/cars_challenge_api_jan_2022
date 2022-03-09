FactoryBot.define do
  factory :car do
    brand { 'MyString' }
    model { 'MyString' }
    colour { 'MyString' }
    year { 2012 }
    price { 50.000 }
  end
end
