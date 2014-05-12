# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
  	email "exampleuser@example.com"
  	username "exampleuser"
  	password "foobar00"
  end
end
