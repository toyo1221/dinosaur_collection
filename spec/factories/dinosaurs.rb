FactoryBot.define do
  factory :dinosaur do
    name { "テストザウルス" }
    eating_id { 1 }
    era_id { 1 }
    size { 3 }
    weight { 0.5 }
    explanation { "テストだよ" }
    association :admin

    after(:build) do |dinosaur|
      dinosaur.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
  end
end