# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
    name "MyString"
    description "MyText"
    wiki_url "MyString"
    website "MyString"
    address "MyString"
  end
end
