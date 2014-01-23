FactoryGirl.define do
  factory :user do
    first     "Claire"
    last	  "Wolford"
    email     "cwolford@andover.edu"
    password  "foobar"
    password_confirmation "foobar"
  end
end