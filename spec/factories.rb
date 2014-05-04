FactoryGirl.define do
  factory :user do
    name     "Arthur Dent"
    email    "arthur@dent.com"
    password "qwerty"
    password_confirmation "qwerty"
  end
end