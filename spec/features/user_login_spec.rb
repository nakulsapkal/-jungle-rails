require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do
  before :each do
    @user=User.create!(first_name:"abc",
    last_name:"xyz",
    email: 'abc@gmail.com',
    password: 'abc@123',
    password_confirmation: 'abc@123')
  end


  scenario "User is taken to home page after successful logged in" do
    
    #Act
    visit login_path

    fill_in 'email', with: 'abc@gmail.com'
    fill_in 'password', with: 'abc@123'
    click_on('Submit')

    #Debug & verify
    save_screenshot

    #Verify
    expect(page).to have_content 'Signed in as abc xyz'


  end


end
