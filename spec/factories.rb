FactoryGirl.define do
  factory :user do
    first     "Example"
    last	  "User"
    email     "example@andover.edu"
    password  "foobar"
    password_confirmation "foobar"
  end
end