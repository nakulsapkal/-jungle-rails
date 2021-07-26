require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:category){Category.new(id: 1, name: "Mens Apparel")}
  subject {Product.new(name:"Tshirt", price:10, quantity: 1, category: category)}

  
  describe 'Validations' do
    # validation tests/examples here

    it "saves successfully with all four fields set and belong to a category" do
      subject.valid?
      expect(subject.errors).to be_empty
    end

    it "should give validation errors if name field is empty" do
      subject.name = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end


    it "should give validation errors if price field is empty" do
      subject.price_cents = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end


    it "should give validation errors if quantity field is empty" do
      subject.quantity = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end


    it "should give validation errors if category_id is not set" do
      subject.category= nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end


  end
end
