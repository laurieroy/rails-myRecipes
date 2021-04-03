FactoryBot.define do
  sequence :email do |n|
		"test#{n}@example.com"
  end
  
  factory :user do
		first_name { "Test" }
		last_name  { "Tester" }	
    email { generate :email }
		password {"password"}
		password_confirmation {"password"}
  end
  
  # factory :admin do
  #   first_name { "Laurie" }
  #   last_name { "Roy" }
  #   email {"laurieroy.dev@gmail.com" }
  # end
end
