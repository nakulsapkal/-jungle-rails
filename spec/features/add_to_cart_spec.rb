require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature do
  before :each do
    @category = Category.create! name:'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "Users clicks the 'Add to Cart' button for a product on the home page and cart increases by one" do
    
    #visits root page
    visit root_path

    click_on 'Add', match: :first
    #find('shopping-cart', match: :first).click

    # DEBUG / VERIFY
    #save_screenshot

    expect(page).to have_content 'My Cart (1)'

  end

end
