require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(user_name: 'pineappleDog',password: 'TexMex123', email: 'farmer@dirt.com')
  expect(account).to be_valid
  end
  it 'is not valid without a username' do
    account = Account.create(password: 'TexMex123', email: 'farmer@dirt.com')
  expect(account.errors[:user_name]).to_not be_empty
  end
  it 'is not valid without a password' do
    account = Account.create(user_name: 'pineappleDog', email: 'farmer@dirt.com')
  expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid without a email' do
    account = Account.create(user_name: 'pineappleDog', password: 'TexMex123')
  expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid if username is less than 5 characters' do
    account = Account.create(user_name: 'pine',password: 'TexMex123', email: 'farmer@dirt.com')
  expect(account.errors[:user_name]).to_not be_empty
    account_username = Account.create(user_name: 'pineappleDog',password: 'TexMex123', email: 'farmer@dirt.com')
  expect(account_username.errors[:user_name]).to_not be_empty
  end
  it 'does not allow duplicate usernames' do
    Account.create(user_name: 'pineappleDog',password: 'TexMex123', email: 'farmer@dirt.com')
    account = Account.create(user_name: 'pineappleDog',password: 'TexMex123', email: 'farmer@dirt.com')
    expect(account.errors[:user_name]).to_not be_empty
  end
  it 'is not valid if password is less than 6 characters' do
    account = Account.create(user_name: 'pineappleDog',password: 'TexMe', email: 'farmer@dirt.com')
  expect(account.errors[:password]).to_not be_empty
    account_password = Account.create(user_name: 'pineappleDog',password: 'TexMex123', email: 'farmer@dirt.com')
  expect(account_password.errors[:password]).to_not be_empty
  end 
  it 'does not allow duplicate usernames' do
    Account.create(user_name: 'pineappleDog',password: 'TexMex123', email: 'farmer@dirt.com')
    password_unique = Account.create(user_name: 'pineappleDog',password: 'TexMex123', email: 'farmer@dirt.com')
    expect(password_unique.errors[:user_name]).to_not be_empty
  end
end