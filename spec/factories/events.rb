# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    description "MyText"
    start_date "2012-06-20 14:13:36"
    end_date "2012-06-20 14:13:36"
    featured false
    cost 1
    all_ages false
    venue 1
  end
end
