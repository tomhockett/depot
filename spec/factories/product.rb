FactoryBot.define do
  factory :product do
    title { 'My Title' }
    price { 4.50 }
    description { FFaker::Book.description }
    image_url { 'String.jpg' }
  end
end
