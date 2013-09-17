FactoryGirl.define do
      factory :user do
        name "Michael Hartl"
        email "michael@example.com"
        password "foobar"
        password_confirmation "foobar"
      end

      factory :post do
        title "Lorem ipsum"
        description "xxxxxxxxxxxxxxxxxxxxxx"
        user
      end

end
