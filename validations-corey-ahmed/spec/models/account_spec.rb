require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'it is not valid without user_name, email and password' do
  scully = Account.create()
    expect(scully.errors[:user_name]).to_not be_empty
    expect(scully.errors[:email]).to_not be_empty
    expect(scully.errors[:password]).to_not be_empty
    
  end

  it'is not valid if user_name is less than 5 characters' do
    user_one = Account.create(user_name:'h', password:'1234567', email:'random@gmail.com' )
    expect(user_one.errors[:user_name]).to_not be_empty

  end

  it'is not valid if user_name is not unique' do
    Account.create(user_name:'corey15', password:'123456', email:'random@gmail.com')
    user_one = Account.create(user_name:'corey15', password:'123456', email:'random@gmail.com')

    expect(user_one.errors[:user_name]).to_not be_empty

  end

  it'is not valid if password is less than 6 characters' do
    user_one = Account.create(user_name:'h12345', password:'1', email:'random@gmail.com' )
    expect(user_one.errors[:password]).to_not be_empty

  end

  it'is not valid if password is not unique' do
    Account.create(user_name:'ahmed22', password:'123456', email:'random@gmail.com')
    user_one = Account.create(user_name:'corey15', password:'123456', email:'random@gmail.com')

    expect(user_one.errors[:password]).to_not be_empty

  end

end
