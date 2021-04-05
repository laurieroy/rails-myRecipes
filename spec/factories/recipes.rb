FactoryBot.define do
	factory :recipe do
		name { "Recipe 1"}
		description { "Some Description that's long enough"}
		user { create(:user)} 
	end

	factory :second_recipe, class: Recipe do
		name { "Recipe 2"}
		description { "Some Description that's long enough"}
		user { create(:user)} 
	end
	
end