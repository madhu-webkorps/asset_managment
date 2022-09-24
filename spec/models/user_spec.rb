require 'spec_helper'

RSpec.describe User, type: :model do

  context 'validation tests' do

    it 'ensure emil presence' do
      user = User.new( password: '123456').save
      expect(user).to eq(false)
    end

    it 'ensure password presence' do 
      user = User.new( email: 'madhu@gmail.com').save
      expect(user).to eq(false)

   end

  end

end
