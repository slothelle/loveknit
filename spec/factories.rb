FactoryGirl.define do
  factory :user do
    first_name    "Suzy"
    last_name     "Queue"
    ravelry_name  "suzyqqqq"
    email         "suzy@queue.com"
    password      "password123456"
  end

  factory :garment do
    category "hat"
  end

  factory :needle do
    size "US 6 (4.0 mm)"
  end

  factory :another_needle, parent: :needle do
    size "US 7 (4.5 mm)"
  end

  factory :yarn_weight do
    weight          "Aran"
    yardage_factor  "1.2"
  end
end