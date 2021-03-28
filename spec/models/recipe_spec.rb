require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "can be created" do
		expect(@recipe).to be_valid
	end

	it "cannot be created without ingredients" do
		@user.ingredients = nil
		expect(@recipe).to_not  be_valid
	end

	it "cannot be created without instructions" do
		@user.instructions = nil
		expect(@recipe).to_not  be_valid
	end
end