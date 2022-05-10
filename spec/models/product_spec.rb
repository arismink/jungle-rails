require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before(:each) do
      @category = Category.new({ name: 'Fruits' })
      @category.save
    end


    it 'creates a product when all fields are defined' do
      @product = @category.products.create!(name: 'Mango', price_cents: 50, quantity: 2, category: @category)

      expect(@product).to be_valid
    end

    it 'validates name' do
      @product = @category.products.new(name: nil, price_cents: 50, quantity: 2)
      @product.save

      expect(@product.errors.full_messages).to include("Name can't be blank")

    end

    it 'validates quantity' do
      @product = @category.products.new(name: 'Mango', price_cents: 50, quantity: nil)
      @product.save

      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'validates price' do
      @product = @category.products.new(name: 'Mango', price_cents: nil, quantity: 2)
      @product.save

      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it 'validates category' do
      @product = Product.new(name: 'Mango', price_cents: 50, quantity: 2, category: nil)
      @product.save

      expect(@product.errors.full_messages).to include("Category can't be blank")

    end

  end
end
