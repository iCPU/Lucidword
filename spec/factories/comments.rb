# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    user_id 1
    ending_id 1
    content "MyText"
  end
end
