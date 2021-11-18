require 'rails_helper'
 RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
    
   describe "ユーザー新規登録" do
     it "nicknameが空だと登録できない" do
      @user.nickname = ''
        @user.valid?
        #expect(@user.errors.full_messages).to include("Nickname can't be blank")
     end
     it "emailが空では登録できない" do
      user = User.new(nickname: "abe", email: "", password: "00000000", password_confirmation: "00000000")
   user.valid?
     end
     it "encrypted_passwordが空では登録できない" do
      @user.password = " "
      @user.valid?
     end
     it 'passwordが5文字以下であれば登録できない' do
      @user.password = '12345'
      @user.password_confirmation = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do
      @user.password = '123456'
      @user.password_confirmation = '1234567'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
     it "first_nameが空では登録できない" do
      @user.first_name = " "
      @user.valid?
    end
     it "last_nameが空では登録できない" do
      @user.last_name = " "
      @user.valid?
    end
     it "last_name_kanaが空では登録できない" do
      @user.last_name_kana = " "
      @user.valid?
    end
     it "first_name_kanaが空では登録できない" do
      @user.last_name_kana = " "
      @user.valid?
    end
    it "birthday_dayが空では登録できない" do
      @user.birthday_day = " "
      @user.valid?
    end
  end
end