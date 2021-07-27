require 'rails_helper'

RSpec.describe User, type: :model do
 subject {User.new(first_name:"user_first_name", last_name: "user_last_name", email: "first_last@gmail.com", password: "user@123", password_confirmation: "user@123")}

  describe "Validations" do

    it "user is created successfully" do
      subject.valid?
      expect(subject.errors).to be_empty
    end
    
  end
end
