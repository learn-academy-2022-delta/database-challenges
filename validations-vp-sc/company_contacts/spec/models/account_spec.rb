require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do 
    account = Account.create(username: 'yoloKing', password: 'appleSauce123?', email: 'donutcake@aol.com')
    expect(account).to be_valid 
  end 

  it 'is not valid if username is outside of 5-15 characters' do
    account_characters = Account.create(username:'Hiya', password: 'appleSauce123?', email: 'donutcake@aol.com')
    expect(account_characters[name]).to_not be_empty
  end 

  it 'is not valid if username is not unique' do 
    account_unique = Account.create(username:'yoloKing', password: 'appleSauce123?', email: 'donutcake@aol.com')
    expect(account_unique[username]).to_not be_empty 
  end 

  it 'is not valid if password is outside of 6-18 characters' do
    account_password = Account.create(username:'yoloking', password: 'apple?', email: 'donutcake@aol.com')
    expect(account_password[password]).to_not be_empty
  end 

  it 'is not valid if password is not unique' do 
    account_unique_password = Account.create(username:'yoloKing', password: 'peacheZZ123!', email: 'donutcake@aol.com')
    expect(account_unique_password[password]).to_not be_empty 
  end 

end
