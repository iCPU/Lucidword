# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ending do
    title "MyString"
    content "MyText"
    user_id 1
    beginning_id 1
  end
end
