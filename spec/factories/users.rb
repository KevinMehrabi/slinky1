FactoryGirl.define do
  factory :user do
    name "Joe Random"
    first_name "Joe"
    last_name "Random"
    email "joe@random.com"
    latitude 34
    longitude 74
    description "web developer"
    provider "linkedin"
    image_url "https://media.licdn.com/blah/blah"
    country "us"
    url "https://www.linkedin.com/pub/random"
    zipcode 90024
    city "Los Angeles"
    state "California"
    address "123 Fun Street"
    
    factory :user2 do
        name "Sue Random"
        description "chemical engineer"
    end
  end
end