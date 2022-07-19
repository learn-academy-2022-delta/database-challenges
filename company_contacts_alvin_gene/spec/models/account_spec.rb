require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username, password and email' do
    ken = Account.create password:'testing',email:'sample'
    expect(ken.errors[:username]).to_not be_empty
    jerry = Account.create username:'testing',email:'sample'
    expect(jerry.errors[:password]).to_not be_empty
    max = Account.create username:'testing',password:'sample'
    expect(max.errors[:email]).to_not be_empty
  end

  it 'requires a username with at least 5 characters' do
    ken = Account.create username:'gray',password:'testing',email:'sample'
    expect(ken.errors[:username]).to_not be_empty 
  end

  it 'does not allow duplicate usernames' do
    Account.create(username:'xavier',password:'unique',email:'sample')
    ken = Account.create(username:'xavier',password:'unique',email:'sample')
    expect(ken.errors[:username]).to_not be_empty
  end

  it 'requires a password with at least 6 characters' do
    ken = Account.create username:'gray',password:'test',email:'sample'
    expect(ken.errors[:password]).to_not be_empty 
  end

  it 'does not allow duplicate passwords' do
    Account.create(username:'xavier',password:'unique',email:'sample')
    ken = Account.create(username:'xavier',password:'unique',email:'sample')
    expect(ken.errors[:password]).to_not be_empty
  end
end
