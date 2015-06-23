FactoryGirl.define do
  factory :user do
    first_name "Joe"
    last_name "Random"
    email "joe@random.com"
    latitude 34
    longitude 74
    description "blah blah"
    provider "linkedin"
    image_url "https://media.licdn.com/blah/blah"
    country "us"
    url "https://www.linkedin.com/pub/random"
  end
end