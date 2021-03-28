require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "tester@test.com", password: "password", password_confirmation: "password", first_name: "test", last_name: "tester")
    end
    
    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name" do
      @user.first_name = nil
      expect(@user).to_not  be_valid
    end

    it "cannot be created without last_name" do
      @user.last_name = nil
      expect(@user).to_not  be_valid
    end

    it "cannot be created without email" do
      @user.email = nil
      expect(@user).to_not  be_valid
    end
  end
end
