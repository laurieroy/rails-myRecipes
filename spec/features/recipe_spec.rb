require 'rails_helper'

describe 'navigate' do
	before do
		# let(:user) { FactoryBot.create(:user)}
		@user = User.create!(email: "tester@test.com", name: "tester", password: "password", password_confirmation: "password")
		# let(:recipe) do
		# @recipe =	Recipe.create(name: "Name1", description: "some crazy description for a recipe", user_id: @user.id)

	# end

	
		# login_as(@user)
	end

	describe 'index' do
		before do
			visit recipes_path 
		end

		it 'can be reached successfully' do
			expect(page.status_code).to eq(200)
		end

		xit 'has a title of Recipes' do
			expect(page).to have_content(/Recipes/)
		end

		end
		it 'has a list of recipes' do
			recipe1 =	FactoryBot.build_stubbed(:recipe)
			recipe2 = FactoryBot.build_stubbed(:second_recipe)
			
			visit recipes_path 

			expect(page).to have_content(/Recipe|1|2/)
	end
end
