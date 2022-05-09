require 'rails_helper'

RSpec.describe Product, type: :model do

    describe 'Validations' do

        it 'should create a new product when all four fields are included' do
            @category = Category.new(name: 'testagory')
            @product = Product.new(
                name: 'Test product',
                price: 44.89,
                quantity: 4,
                category: @category
            )

            expect(@product).to be_valid
        end

        it 'should not be valid without quantity' do
            @category = Category.new(name: 'testagory')
            @product = Product.new(
                name: 'Test product',
                price: 44.89,
                quantity: nil,
                category: @category
            )

            expect(@product).to_not be_valid
            expect(@product.errors.full_messages).to eq ["Quantity can't be blank"]
        end

        it 'should not be valid without a price' do
            @category = Category.new(name: 'testagory')
            @product = Product.new(
                name: 'Test product',
                price_cents: nil,
                quantity: 4,
                category: @category
            )
            expect(@product).to_not be_valid
            expect(@product.errors.full_messages).to include ("Price cents is not a number")
        end

        it 'should not be valid without a category' do 
            @category = Category.new(name: 'testagory')
            @product = Product.new(
                name: 'Test product',
                price: 44.89,
                quantity: 4,
                category: nil
            )
            expect(@product).to_not be_valid
            expect(@product.errors.full_messages).to include ("Category can't be blank")
        end
    end
end