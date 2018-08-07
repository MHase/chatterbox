FactoryBot.define do
  sequence(:email) { |n| "user#{n}@test.com" }

  factory :user do
    email
    password "testtest"
  end

end
