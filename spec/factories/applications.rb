FactoryGirl.define do
  factory :application do
    sequence(:name) { |n| "APP_#{n}"}

    ignore do
      numComps 2
    end


    factory :app_with_components do

      comps = ["Comp_1", "Comp_2"]
      after(:create) do |app|
        comps.each do |comp|
          create(:component, name: comp, application: app)
        end
      end
    end

  end

  trait :with_components do
    ignore do
      comps ["Comp_1"]
    end
    after(:create) do |app, evaluator|
      evaluator.comps.each do |comp|
        create(:component, name: comp, application: app)
      end
    end
  end

end
