require 'rails_helper'

RSpec.describe User, type: :model do
 let(:user1) {User.new(first_name:"user1_first_name", last_name: "user1_last_name", email: "user1@gmail.com", password: "user1@123", password_confirmation: "user1@123")}

#  let(:user2) {User.new(first_name:"user2_first_name", last_name: "user2_last_name", email: "user2@gmail.com", password: "user2@123", password_confirmation: "user2@123")}


  describe "Validations" do

    it "user is created successfully with password and password_confirmation field" do
      user1.valid?
      expect(user1.errors).to be_empty
    end


    it "user is not created when password and password_confirmation values don't match" do
      user1.password = "password"
      user1.valid?
      expect(user1.errors.full_messages).to include("Password confirmation doesn't match Password")
    end


    it "user is not created if emailid is not unique  (not case sensitive)" do
      User.create(first_name:"user2_first_name", last_name: "user2_last_name", email: "USER1@gmail.com", password: "user2@123", password_confirmation: "user2@123")
      user1.valid?
      expect(user1.errors.full_messages).to include("Email has already been taken")
    end


    it "should give validation errors if email field is empty" do
      user1.email = nil
      user1.valid?
      expect(user1.errors).not_to be_empty
    end


    it "should give validation errors if first_name field is empty" do
      user1.first_name = nil
      user1.valid?
      expect(user1.errors).not_to be_empty
    end


    it "should give validation errors if last_name field is empty" do
      user1.last_name = nil
      user1.valid?
      expect(user1.errors.full_messages).to include("Last name can't be blank")
    end


    it "should give validation errors if password is not of minimum length" do
      user2=User.create(first_name:"user2_first_name", last_name: "user2_last_name", email: "user2@gmail.com", password: "user", password_confirmation: "user")
      user2.valid?
      expect(user2.errors.full_messages).to include("Password is too short (minimum is 5 characters)")
    end




  end
end
