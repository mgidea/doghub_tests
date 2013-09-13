# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    sequence(:email) { |n| "tom#{n}@gmail.com" }
    sequence(:subject) { |n| "subject#{n}" }
    sequence(:description) { |n| "description#{n}" }
    sequence(:first_name) { |n| "firstname#{n}" }
    sequence(:last_name)  { |n| "lastname#{n}" }
  end
end
