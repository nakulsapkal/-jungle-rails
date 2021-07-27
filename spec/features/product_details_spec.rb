require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'apparel'
    
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

  scenario "Clicking one of the product partials should navigate directly to a product detail page" do
    # ACT
    visit root_path
    click_link('Details »',match: :first)
    #find('a.btn-default', match: :first).click

    # VERIFY
    expect(page).to have_content 'Quantity'
    # DEBUG / VERIFY
    save_and_open_screenshot
  end


end
