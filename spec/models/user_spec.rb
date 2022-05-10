require 'rails_helper'

RSpec.describe User, type: :model do

    describe 'Validations' do
        
        it 'should create a new user when all fields are added' do
            @user = User.new(
                first_name: 'First',
                last_name: 'Last',
                email: 'example@email.com',
                password: 'password',
                password_confirmation: 'password'
            )
            expect(@user).to be_valid
        end

        it 'should not be valid without a first name' do
            @user = User.new(
                first_name: nil,
                last_name: 'Last',
                email: 'example@email.com',
                password: 'password',
                password_confirmation: 'password'
            )
            expect(@user).to_not be_valid
        end

        it 'should not be valid without an email' do
            @user = User.new(
                first_name: 'First',
                last_name: 'Last',
                email: nil,
                password: 'password',
                password_confirmation: 'password'
            )
            expect(@user).to_not be_valid
        end

        it 'should not be valid without a password' do
            @user = User.new(
                first_name: 'First',
                last_name: 'Last',
                email: 'example@email.com',
                password: nil,
                password_confirmation: 'password'
            )
            expect(@user).to_not be_valid
        end


        it 'should not be valid without a password confirmation' do
            @user = User.new(
                first_name: 'First',
                last_name: 'Last',
                email: 'example@email.com',
                password: 'password',
                password_confirmation: nil
            )
            expect(@user).to_not be_valid
        end

        it 'should not be valid if password is different' do
            @user = User.new(
                first_name: 'First',
                last_name: 'Last',
                email: 'example@email.com',
                password: 'password',
                password_confirmation: 'wrong'
            )
            expect(@user).to_not be_valid
        end
    end

end