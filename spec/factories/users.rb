FactoryGirl.define do
  factory :user do
    mail_account 'test@test.com'
    first_name '純也'
    last_name '下田'
    knick_name 'じゅん（生徒）'
    password 'TestForBlueberryPi'
  end
end
