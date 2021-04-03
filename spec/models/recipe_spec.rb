require 'rails_helper'

RSpec.describe Recipe, type: :model do
	describe "Creation" do
		before do
			
			@recipe = Recipe.create(name: "some name", description: "Some Description")
      # @recipe = FactoryBot.create(:recipe)
		end
		
		it "can be created" do
			expect(@recipe).to be_valid
		end

		it "cannot be created without a name" do
			@recipe.name = nil
			expect(@recipe).to_not be_valid
		end

		it "cannot be created without a description" do
			@recipe.description = nil
			expect(@recipe).to_not be_valid
		end

		xit "cannot be created without ingredients" do
			@recipe.ingredients = nil
			expect(@recipe).to_not  be_valid
		end

		xit "cannot be created without instructions" do
			@recipe.instructions = nil
			expect(@recipe).to_not  be_valid
		end

		it "has a name longer than 3 characters" do
			@recipe.name = "a" * 3
			expect(@recipe).to_not be_valid
		end

		it "has a name shorter than 100 characters" do
			@recipe.name = "a" * 101
			expect(@recipe).to_not be_valid
		end

		it "has a description longer than 25 characters" do
			@recipe.description = "a" * 25
			expect(@recipe).to_not be_valid
		end

		it "has a description shorter than 500 characters" do
			@recipe.description = "a" * 501
			expect(@recipe).to_not be_valid
		end

		it "cannot be created without a user" do
			@recipe.user_id = nil
			expect(@recipe).to_not be_valid  
		end
	end
end