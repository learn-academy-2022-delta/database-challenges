require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(user_name: 'pineappleDog', password: 'TexMex12345', email:'farmer@dirt.com')
    expect(account).to be_valid
  end
  it 'is not valid without user name' do
    account = Account.create(user_name: '', password: 'TexMex12345', email:'farmer@dirt.com')
    expect(account.errors[:user_name]).to_not be_empty
  end
  it 'is not valid without password' do
    account = Account.create(user_name: 'pineappleDog', password: '', email:'farmer@dirt.com')
    expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid without email' do
    account = Account.create(user_name: 'pineappleDog', password: 'TexMex12345', email:'')
    expect(account.errors[:email]).to_not be_empty
  end
  it 'is not valid if user name is less than 5 characters'  do
    account = Account.create(user_name: 'pine', password: 'TexMex12345', email:'farmer@dirt.com')
    expect(account.errors[:user_name]).to_not be_empty
    account_usn = Account.create(user_name: 'pineappleDog', password: 'TexMex12345', email:'farmer@dirt.com')
    expect(account_usn.errors[:user_name]).to_not be_empty
  end
  it 'does not allow duplicate user names' do
    Account.create(user_name: 'pineappleDog', password: 'TexMex12345', email:'farmer@dirt.com')
    account_unique = Account.create(user_name: 'pineappleDog', password: 'TexMex12345', email:'farmer@dirt.com')
    expect(account_unique.errors[:user_name]).to_not be_empty
  end
  it 'is not valid if password is less than 6 characters'  do
    account = Account.create(user_name: 'pineappleDog', password: 'Tex', email:'farmer@dirt.com')
    expect(account.errors[:password]).to_not be_empty
    account_pass = Account.create(user_name: 'pineappleDog', password: 'Tex', email:'farmer@dirt.com')
    expect(account_pass.errors[:password]).to_not be_empty
  end
  it 'does not allow duplicate password' do
    Account.create(user_name: 'pineappleDog', password: 'TexMex12345', email:'farmer@dirt.com')
    password_unique = Account.create(user_name: 'PineappleDog', password: 'TexMex12345', email:'farmer@dirt.com')
    expect(password_unique.errors[:password]).to_not be_empty
  end
end

