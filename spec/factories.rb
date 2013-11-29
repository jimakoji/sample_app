FactoryGirl.define do
  factory :user do
    name     "jimakoji"
    email    "jimakoji@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
