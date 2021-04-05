require 'rails_helper'

describe 'navigate' do
	# let(:user) { FactoryBot.create(:user)}
	@user = User.create!(email: "tester@test.com", name: "tester", password: "password", password_confirmation: "password")
	# let(:recipe) do
	# @recipe =	Recipe.create(name: "Name1", description: "some crazy description for a recipe", user_id: @user.id)
	@recipe =	@user.recipes.build(name: "Name1", description: "some crazy description for a recipe")
	end

	before do
		login_as(@user)
	end

	it 'can be reached successfully' do
		expect(page.status_code).to eq(200)
	end

	it 'has a title of Recipes' do
		expect(page).to have_content(/Recipes/)
	end
end
