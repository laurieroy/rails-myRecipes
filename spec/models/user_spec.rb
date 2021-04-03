# require 'rails_helper'
# # think about how much is need since is devise, prob don't need this
# RSpec.describe User, type: :model do
#   describe "creation" do
#     before do
#       @user = User.create(email: "tester@test.com", password: "password", password_confirmation: "password", first_name: "test", last_name: "tester")
#     end
    
#     it "can be created" do
#       expect(@user).to be_valid
#     end

#     it "cannot be created without a name" do
#       @user.name = nil
#       expect(@user).to_not be_valid
#     end

#     it "cannot be created without email" do
#       @user.email = nil
#       expect(@user).to_not be_valid
#     end

#     it "cannot have a name less than 2 characters" do
#       @user.name = "a"
#       expect(@user).to_not be_valid
#     end

#     it "cannot have a name more than 30 characters" do
#       @user.name = "a" * 31
#       expect(@user).to_not be_valid
#     end

#     it "cannot have duplicate emails" do
#       duplicate_user = @user.dup
#       duplicate_user.email = @user.email.upcase
#       @user.save
#       expect(duplicate_user).to_not be_valid
#     end
#   end
# end
