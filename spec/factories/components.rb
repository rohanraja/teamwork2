FactoryGirl.define do
  factory :component do
    sequence(:name) { |n| "Comp_#{n}"}
    application
  end
end
